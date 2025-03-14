import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pexa_car_care_rest_api/src/infrastructure/services/api_services.dart';

import '../domain/model/post_model.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final ApiService apiService;
  PostBloc(this.apiService) : super(const PostState.initial()) {
    on<FetchPosts>(_onFetchPosts);
  }

  Future<void> _onFetchPosts(FetchPosts event, Emitter<PostState> emit) async {
    emit(const PostState.loading());

    try {
      final posts = await apiService.fetchPosts();
      emit(PostState.loaded(posts));
    } catch (e) {
      emit(PostState.error(e.toString()));
    }
  }
}