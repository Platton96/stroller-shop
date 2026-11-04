---
description: Form-state shape, where validation runs, and how field errors reach the UI in BLoC-backed screens.
paths: ["**/*form*.dart","**/*validation*.dart","**/*controller*.dart","**/*text_field*.dart"]
---

# Form Validation Rules

## Two Validation Layers

Keep **field-local validation** (format / non-empty — pure functions of the field text) separate from **submit-time validation** (server-side checks, cross-field invariants — done in the BLoC handler).

| Layer | Owner | Where it shows |
|---|---|---|
| Field-local | A pure validator in the BLoC/mapper, run on submit | Typed error on the VM |
| Submit-time / server | BLoC handler → VM error field | Same VM error field |

Both surface through the same VM field and the same `errorText` on the input — never roll a separate "error label" widget.

## Errors Are Typed, Not Strings

A BLoC has no `BuildContext`, so it cannot produce localized text. Model errors as an enum or sealed variant and let the widget map it to `S.of(context)`:

```dart
enum LoginError { none, emailInvalid, credentialsRejected }

@freezed
abstract class LoginVM with _$LoginVM {
  const factory LoginVM({
    required LoginError error,
    required bool isSubmitting,
  }) = _LoginVM;
}
```

```dart
TextField(
  controller: _emailController,
  decoration: InputDecoration(
    hintText: S.of(context).email,
    errorText: switch (vm.error) {
      .none => null,
      .emailInvalid => S.of(context).emailInvalid,
      .credentialsRejected => S.of(context).credentialsRejected,
    },
  ),
)
```

## Submission Flow

```dart
Future<void> _handleSubmitEvent(Emitter<LoginState> emit, _SubmitEvent event) async {
  if (!_isEmailValid(event.email)) {
    emit(.idle(data: state.data.copyWith(error: .emailInvalid)));
    return;
  }

  emit(.idle(data: state.data.copyWith(isSubmitting: true, error: .none)));

  await _repo.submit(event.email);

  appNavigator.pop(true);
}

@override
void handleGeneralException(LoginEvent e, Emitter<LoginState> emit, Exception ex) {
  emit(.idle(data: state.data.copyWith(isSubmitting: false, error: _toFormError(ex))));
}
```

The BLoC's `_was*` field convention (`widget-bloc.md` "Field naming") tracks "user has tried submitting at least once" so you can decide whether to highlight every field aggressively or only after the first attempt.

## What NOT to Do

- **Don't keep multi-field form values in `setState`.** A multi-field form is BLoC territory — fields belong on `StateData` so a server failure can `copyWith` an error without losing input.
- **Don't validate on every keystroke** by emitting BLoC events per character. Clear a shown error on change, validate on submit; use `debounceRestartable()` only if live cross-field validation is genuinely required.
- **Don't store `TextEditingController` instances in BLoC state.** They are widget-layer resources. State stores the **value**; the widget owns the controller.
- **Don't use a `Form` + `GlobalKey<FormState>` to drive submit.** Validation runs in the BLoC on a submit event.

## Checklist

- [ ] Errors are enum/sealed values on the VM, mapped to `S.of(context)` in the widget
- [ ] Field-local checks run on submit in the BLoC, before any network call
- [ ] No per-keystroke BLoC events for validation
- [ ] `_was*` field on the BLoC tracks "first submit attempted" if eager-vs-lazy error UI matters
- [ ] Controllers live in the widget (`StatefulWidget`), not in BLoC state
- [ ] No `Form` widget / `GlobalKey<FormState>`
- [ ] Server failure maps to a typed error in `handleGeneralException`
