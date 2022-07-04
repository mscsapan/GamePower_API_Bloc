part of 'api_data_bloc.dart';

abstract class ApiDataState extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends ApiDataState {
  @override
  List<Object> get props => [];
}

class LoadingApiData extends ApiDataState {}

class LoadedApiData extends ApiDataState {
  final List<ApiData> api;

  LoadedApiData({required this.api});

  @override
  List<Object?> get props => [api];
}

class HasErrorApiDataState extends ApiDataState {
  final String message;

  HasErrorApiDataState({required this.message});

  @override
  List<Object?> get props => [message];
}
