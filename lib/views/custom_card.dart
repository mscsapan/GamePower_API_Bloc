import 'package:flutter/material.dart';
import 'package:gamer_power_api_bloc/model/api_data_model.dart';
import 'package:transparent_image/transparent_image.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.api}) : super(key: key);
  final ApiData api;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      // color: const Color(0xFF363940),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 220.0,
            width: double.infinity,
            child: Stack(
              fit: StackFit.expand,
              children: [
                const Center(child: CircularProgressIndicator()),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  child: FadeInImage.memoryNetwork(
                    image: '${api.image}',
                    fit: BoxFit.cover,
                    placeholder: kTransparentImage,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Text(
              api.title.toString(),
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black.withOpacity(0.8),
                letterSpacing: 1.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
