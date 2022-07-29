import 'package:flutter/material.dart';
import 'package:gamer_power_api_bloc/model/api_data_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailGameScreen extends StatelessWidget {
  const DetailGameScreen({Key? key, required this.api}) : super(key: key);
  final ApiData api;

  titleStyle() => const TextStyle(
      fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.w600);
  final Color white = Colors.white;
  final SizedBox space = const SizedBox(height: 10.0);

  void _launchUrl(BuildContext context, String baseUrl) async {
    final Uri url = Uri.parse(baseUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Something Wrong'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Game Details'),
        backgroundColor: const Color(0xFF121212),
      ),
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
                          child:
                              Image.network(api.image!, fit: BoxFit.cover)))),
              Text(api.title!, style: titleStyle()),
              space,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Available in : ',
                      style: TextStyle(
                        color: white,
                        fontSize: 20.0,
                      ),
                    ),
                    TextSpan(
                      text: '${api.platforms}',
                      style: TextStyle(
                        color: white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              space,
              Text(
                'Game Description',
                style:
                    TextStyle(fontSize: 20.0, letterSpacing: 1.0, color: white),
                textAlign: TextAlign.justify,
                maxLines: 3,
              ),
              space,
              Text(
                '${api.description}',
                style: TextStyle(fontSize: 20.0, color: white),
                textAlign: TextAlign.justify,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: SizedBox(
                  width: _size.width,
                  height: _size.height * 0.06,
                  child: MaterialButton(
                    onPressed: () async {
                      _launchUrl(context, api.gamerpowerUrl!);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.grey[300],
                    child: const Text(
                      'Open Browser',
                      style: TextStyle(fontSize: 22.0, color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: _size.width,
                height: _size.height * 0.06,
                child: OutlinedButton(
                  onPressed: () async {
                    _launchUrl(context, api.gamerpowerUrl!);
                  },
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      side: const BorderSide(
                        color: Colors.grey,
                      )),
                  child: Text(
                    'Open Game Power',
                    style: TextStyle(fontSize: 22.0, color: white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
