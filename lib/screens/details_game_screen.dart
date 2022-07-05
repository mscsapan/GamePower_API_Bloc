import 'package:flutter/material.dart';
import 'package:gamer_power_api_bloc/model/api_data_model.dart';

class DetailGameScreen extends StatelessWidget {
  const DetailGameScreen({Key? key, required this.api}) : super(key: key);
  final ApiData api;

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          height: _size.height,
          width: _size.width,
          margin: const EdgeInsets.symmetric(horizontal: 4.0),
          child: ListView(
            children: [
              SizedBox(height: _size.height * 0.01),
              SizedBox(
                height: _size.height * 0.3,
                width: _size.width,
                child: Hero(
                  tag: api.image!,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(4.0),
                      child: Image.network(api.thumbnail!, fit: BoxFit.cover)),
                ),
              ),
              Text(
                api.title!,
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontSize: 20.0,
                    ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Available in: ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: '${api.platforms}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                'Game Description',
                style: TextStyle(fontSize: 22.0, letterSpacing: 1.0),
                textAlign: TextAlign.justify,
                maxLines: 3,
              ),
              Text(
                '${api.description}',
                style: const TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
