import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:gamer_power_api_bloc/api_network/api_network.dart';
import 'package:gamer_power_api_bloc/model/api_data_model.dart';

part 'api_data_event.dart';

part 'api_data_state.dart';

class ApiDataBloc extends Bloc<ApiDataEvent, ApiDataState> {
  ApiDataBloc() : super(InitialState()) {
    on<ApiDataEvent>(
      (event, emit) async {
        if (event is GetAllApiDataEvent) {
          emit(LoadingApiData());
          try {
            List<ApiData> api = await ApiNetwork().getApiData();
            emit(LoadedApiData(api: api));
          } catch (e) {
            emit(HasErrorApiDataState(message: e.toString()));
          }
        }
      },
    );
  }
}
