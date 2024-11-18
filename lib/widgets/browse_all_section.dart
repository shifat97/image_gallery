import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Random random = Random();

class BrowseAllSection extends StatelessWidget {
  const BrowseAllSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BROWSE ALL',
          style: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: List.generate(5, (index) {
                  return imageContainer(screenWidth * 0.5,
                      'assets/images/image_${index * 2 + 1}.png');
                }),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                children: List.generate(5, (index) {
                  return imageContainer(screenWidth * 0.5,
                      'assets/images/image_${index * 2 + 2}.png');
                }),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: screenWidth,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color(0xFF000000)
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(6.00),
            ),
          ),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'SEE MORE',
              style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget imageContainer(double width, String imagePath) {
    List<int> numbers = [220, 310];
    int randomHeight = numbers[random.nextInt(2)];

    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        height: randomHeight.toDouble(),
        margin: const EdgeInsets.only(bottom: 10),
        color: Colors.red,
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
