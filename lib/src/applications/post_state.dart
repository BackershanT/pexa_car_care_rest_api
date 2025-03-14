part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = PostInitial;
  const factory PostState.loading() = PostLoading;
  const factory PostState.loaded(List<PostModel> posts) = PostLoaded;
  const factory PostState.error(String message) = PostError;
}