import 'package:flutter/material.dart';

class DeliveryInstructions extends StatelessWidget {
  const DeliveryInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Icon(Icons.doorbell_outlined),
                  Text('Avoid ringing bell')
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.door_back_door),
                  Text('Leave at the door')
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.mic_rounded),
                  Text('Directions to reach')
                ],
              ),
            ),
          ),
           Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.call),
                  Text('Avoid calling')
                ],
              ),
            ),
          ),
           Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(Icons.security_sharp),
                  Text('Leave with security')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}