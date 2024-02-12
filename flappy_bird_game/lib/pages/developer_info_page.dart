import 'package:flutter/material.dart';

class DeveloperInfoPage extends StatelessWidget {
  const DeveloperInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_image.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 16, left: 16),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              label: const SizedBox.shrink(), // Hide the label
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Make button transparent
                elevation: 0, // Remove button elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                  side: const BorderSide(
                      color: Color.fromARGB(255, 91, 183, 96),
                      width: 4), // Yellow border
                ),
                shadowColor: const Color.fromARGB(255, 91, 183, 96)
                    .withOpacity(0.5), // Yellow shadow
                padding: const EdgeInsets.all(12), // Padding around icon
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}
