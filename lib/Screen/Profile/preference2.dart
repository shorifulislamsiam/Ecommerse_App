//Advanced Code of Switch usages.
//This is from copilot,

import 'package:flutter/material.dart';

class Preference extends StatefulWidget {
  const Preference({super.key});

  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  // Map to store the states of each switch
  Map<String, bool> switchStates = {
    "pushNotification": false,
    "faceID": false,
    "pinCode": false,
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 0.8, color: Colors.grey),
        ),
        child: Column(
          children: [
            buildSwitchRow(
              icon: Icons.doorbell_outlined,
              label: "Push notification",
              key: "pushNotification",
            ),
            Divider(),
            buildSwitchRow(
              icon: Icons.qr_code_scanner,
              label: "Face ID",
              key: "faceID",
            ),
            Divider(),
            buildSwitchRow(
              icon: Icons.dialpad_sharp,
              label: "PIN Code",
              key: "pinCode",
            ),
            Divider(),
            GestureDetector(
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.logout_rounded,
                    size: 35,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSwitchRow({
    required IconData icon,
    required String label,
    required String key,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 8,
        ),
        Icon(
          icon,
          size: 35,
        ),
        SizedBox(width: 15),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Switch(
          value: switchStates[key] ?? false,
          onChanged: (value) {
            setState(() {
              switchStates[key] = value;
            });
          },
        ),
      ],
    );
  }
}
