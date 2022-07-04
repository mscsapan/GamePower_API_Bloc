import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_power_api_bloc/bloc/api_data_bloc.dart';
import 'package:gamer_power_api_bloc/screens/load_api_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  _circularIndicator() {
    return const Center(child: CircularProgressIndicator());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gamer Power '), centerTitle: true),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 2.0),
        child: BlocBuilder<ApiDataBloc, ApiDataState>(
          builder: (context, ApiDataState state) {
            if (state is InitialState) {
              return _circularIndicator();
            } else if (state is LoadingApiData) {
              return _circularIndicator();
            } else if (state is LoadedApiData) {
              return LoadedApi(api: state.api);
            } else if (state is HasErrorApiDataState) {
              return Center(child: Text(state.message));
            }
            return const Text('Nothing happens..');
          },
        ),
      ),
    );
  }
}
