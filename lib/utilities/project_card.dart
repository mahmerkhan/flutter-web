import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget projectCardWeb(String image, String title, String desc, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 11, 22, 45),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // LEFT SIDE — IMAGE
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => Dialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      // Image with zoom
                      InteractiveViewer(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(image),
                        ),
                      ),

                      // Close Button
                      Positioned(
                        top: 10,
                        right: 10,
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                              color: Colors.black.withOpacity(0.5),
                            ),
                            padding: const EdgeInsets.all(6),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        const SizedBox(width: 20),

        // RIGHT SIDE — TEXT
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(fontSize: 14, color: Colors.cyan),
              ),
              const SizedBox(height: 10),
              Text(
                desc,
                style: GoogleFonts.inter(fontSize: 13, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


Widget projectCardMobile(String image, String title, String desc, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 11, 22, 45),
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // LEFT SIDE — IMAGE
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => Dialog(
                  backgroundColor: Colors.transparent,
                  insetPadding: const EdgeInsets.all(20),
                  child: Stack(
                    children: [
                      // Zoomable image
                      InteractiveViewer(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      // Close button
                      Positioned(
                        top: 10,
                        right: 10,
                        child: GestureDetector(
                          onTap: () => Navigator.of(context).pop(),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.white, width: 2),
                              color: Colors.black.withOpacity(0.5),
                            ),
                            padding: const EdgeInsets.all(6),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 20),

        // RIGHT SIDE — TEXT
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(fontSize: 12, color: Colors.cyan),
              ),
              const SizedBox(height: 10),
              Text(
                desc,
                style: GoogleFonts.inter(fontSize: 11, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
