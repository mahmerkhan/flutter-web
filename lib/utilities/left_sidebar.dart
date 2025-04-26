import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web/utilities/extensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class LeftSidebar extends StatelessWidget {
  const LeftSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Ahmer Khan",
          style: GoogleFonts.inter(fontSize: 40, fontWeight: FontWeight.w800),
        ),
        10.verticalSpace,
        Text(
          "Mobile Application Engineer",
          style: GoogleFonts.inter(fontSize: 16, color: Colors.grey),
        ),
        24.verticalSpace,
        Text("ABOUT", style: GoogleFonts.inter(letterSpacing: 2)),
        10.verticalSpace,
        Text("EXPERIENCE", style: GoogleFonts.inter(letterSpacing: 2)),
        10.verticalSpace,
        Text("PROJECTS", style: GoogleFonts.inter(letterSpacing: 2)),
        Spacer(),
        Row(
          children: [
            GestureDetector(
                onTap: () async {
                  const url = 'https://github.com/mahmerkhan';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: SvgPicture.asset(
                  height: 30,
                  width: 30,
                  "assets/images/git.svg",
                  fit: BoxFit.cover,
                )),
            10.horizontalSpace,
            GestureDetector(
                onTap: () async {
                  const url = 'https://www.linkedin.com/in/iamahmerkhan/';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: SvgPicture.asset(
                  height: 30,
                  width: 30,
                  "assets/images/li.svg",
                  fit: BoxFit.cover,
                )),
          ],
        )
      ],
    );
  }
}
