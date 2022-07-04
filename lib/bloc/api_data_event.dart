part of 'api_data_bloc.dart';

abstract class ApiDataEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetAllApiDataEvent extends ApiDataEvent {
  //final String endPoint;
  // GetAllApiDataEvent({required this.endPoint});
  GetAllApiDataEvent();
}
