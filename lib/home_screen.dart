import 'package:flutter/material.dart';
import 'widgets/whats_new_section.dart';
import 'widgets/browse_all_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Discover',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                WhatsNewSection(),
                SizedBox(
                  height: 50,
                ),
                // Browse All Section
                BrowseAllSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
