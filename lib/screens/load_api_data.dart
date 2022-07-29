import 'package:flutter/material.dart';
import 'package:gamer_power_api_bloc/model/api_data_model.dart';
import 'package:gamer_power_api_bloc/views/custom_card.dart';

class LoadedApi extends StatelessWidget {
  const LoadedApi({Key? key, required this.api}) : super(key: key);
  final List<ApiData> api;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return ListView.builder(
      itemCount: api.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final ApiData data = api[index];
        return CustomCard(api: data);
      },
    );
  }
}
