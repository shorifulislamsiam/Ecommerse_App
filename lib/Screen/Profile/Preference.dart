import 'package:flutter/material.dart';

class Preference extends StatefulWidget {
  const Preference({super.key});

  @override
  State<Preference> createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {
  bool pushNotification = false;
  bool faceId = false;

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
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.doorbell_outlined,
                  size: 35,
                ),
                SizedBox(width: 15),
                Text(
                  "Push notification",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                Switch(
                  activeColor: Colors.green,
                  value: pushNotification,
                  onChanged: (value) {
                    setState(() {
                      pushNotification = value;
                    });
                  },
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.qr_code_scanner,
                  size: 35,
                ),
                SizedBox(width: 15),
                Text(
                  "Face ID",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 170,
                ),
                Switch(
                  activeColor: Colors.green,
                  value: faceId,
                  onChanged: (value) {
                    setState(() {
                      faceId = value;
                    });
                  },
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.dialpad_sharp,
                  size: 35,
                ),
                SizedBox(width: 15),
                Text(
                  "PIN Code",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 160,
                ),
                Icon(
                  Icons.arrow_right_alt_sharp,
                  size: 45,
                )
              ],
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
}
