import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_transform/stream_transform.dart';

abstract final class BlocTransformerDurations {
  static const throttleDroppable = Duration(milliseconds: 300);
  static const debounceRestartable = Duration(milliseconds: 400);
}

mixin BlocTransformers {
  EventTransformer<E> throttleDroppable<E>({
    Duration duration = BlocTransformerDurations.throttleDroppable,
  }) =>
      (events, mapper) => droppable<E>().call(events.throttle(duration), mapper);

  EventTransformer<E> debounceRestartable<E>({
    Duration duration = BlocTransformerDurations.debounceRestartable,
  }) =>
      (events, mapper) => events.debounce(duration).switchMap(mapper);
}
