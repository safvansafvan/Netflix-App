part of 'fast_laugh_bloc.dart';

@freezed
class FastLaughState with _$FastLaughState {
  const factory FastLaughState({
    required List<Downloads> videolist,
    required bool isloading,
    required bool isError,
  }) = _Initial;

  factory FastLaughState.initial() =>
      const FastLaughState(videolist: [], isloading: true, isError: false);
}
