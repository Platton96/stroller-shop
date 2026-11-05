import 'package:flutter/material.dart';
import 'package:stroller_shop/features/assistant/assistant_screen.dart';
import 'package:stroller_shop/features/assistant/bloc/assistant_bloc.dart';

import '../../helpers/golden/golden_setup.dart';
import '../golden_test_data.dart';

void main() {
  GoldenScenario scenario(String name, AssistantState state) => GoldenScenario(
    name,
    widget: const Scaffold(body: AssistantScreen()),
    registration: [
      (getIt) => registerBloc<AssistantBloc, AssistantState>(getIt, MockAssistantBloc(), state),
    ],
  );

  goldenTest(
    'assistant_screen',
    scenarios: () => [
      scenario('greeting', const .ready(data: goldenGreetingVM)),
      scenario('conversation', const .ready(data: goldenConversationVM)),
      scenario('sending', const .ready(data: goldenSendingVM)),
      scenario('error', const .ready(data: goldenErrorChatVM)),
    ],
  );
}
