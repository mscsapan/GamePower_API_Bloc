import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gamer_power_api_bloc/bloc/api_data_bloc.dart';
import 'package:gamer_power_api_bloc/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
      overlays: [SystemUiOverlay.top]);
  runApp(
    MaterialApp(
      home: BlocProvider(
        create: (BuildContext context) =>
            ApiDataBloc()..add(GetAllApiDataEvent()),
        child: const HomeScreen(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
