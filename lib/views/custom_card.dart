import 'package:flutter/material.dart';
import 'package:gamer_power_api_bloc/model/api_data_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, required this.api}) : super(key: key);
  final ApiData api;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      // color: const Color(0xFF363940),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 220.0,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0)),
              child: Image.network(
                '${api.image}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            api.title.toString(),
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black.withOpacity(0.8),
              letterSpacing: 1.0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('${api.worth}'),
                  const SizedBox(width: 4.0),
                  Text('free'.toUpperCase())
                ],
              ),
              Row(
                children: [
                  Text('${api.type}'),
                  const SizedBox(width: 4.0),
                  const Text('Rare')
                ],
              ),
            ],
          ),
          Text(
            api.description!,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black.withOpacity(0.8),
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    height: 40.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const Icon(Icons.add),
                  ),
                  Container(
                    height: 40.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                    ),
                    child: const Icon(Icons.save),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.amber)),
                    onPressed: () {},
                    child: const Text(
                      'View Giveaway',
                      style: TextStyle(color: Colors.amber, letterSpacing: 1.0),
                    )),
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.people, size: 18.0),
              const SizedBox(width: 4.0),
              Text('${api.users} +'),
              const Text('Collected this loot!')
            ],
          ),
        ],
      ),
    );
  }
}
