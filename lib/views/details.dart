import 'package:flutter/material.dart';
import 'package:gamer_power_api_bloc/model/api_data_model.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.api}) : super(key: key);
  final ApiData api;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            api.title.toString(),
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black.withOpacity(0.8),
              letterSpacing: 1.0,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              api.worth!.contains('N/A')
                  ? const Text(
                      'FREE',
                      style: TextStyle(color: Colors.amber, fontSize: 18.0),
                    )
                  : Row(
                      children: [
                        Text('${api.worth}'),
                        const SizedBox(width: 4.0),
                        Text(
                          'free'.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.amber,
                            fontSize: 18.0,
                          ),
                        ),
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
          const SizedBox(height: 4.0),
          Text(
            api.description!,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black.withOpacity(0.8),
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6.0),
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: SizedBox(
                    height: 40.0,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.amber)),
                        onPressed: () {},
                        child: const Text(
                          'View Giveaway',
                          style: TextStyle(
                              color: Colors.amber, letterSpacing: 1.0),
                        )),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 6.0),
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
