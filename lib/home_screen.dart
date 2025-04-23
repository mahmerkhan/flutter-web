import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web/utilities/breakpoints.dart';
import 'package:flutter_web/utilities/extensions.dart';
import 'package:flutter_web/utilities/hover_text.dart';
import 'package:flutter_web/utilities/left_sidebar.dart';
import 'package:flutter_web/utilities/project_card.dart';
import 'package:flutter_web/utilities/section_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Breakpoints.isMobile(screenWidth) ? mobileLayout(context) : desktopLayout(context),
    );
  }
}

Widget desktopLayout(BuildContext context) {
  final tools = ["flutter", "android", "ios"];

  return Row(
    children: [
      // LEFT FIXED PANEL
      Expanded(
        flex: 2,
        child: Container(
          // width: 300,
          height: double.infinity,
          padding: const EdgeInsets.all(100),
          color: const Color(0xFF0F172A),
          child: const LeftSidebar(),
        ),
      ),
      // RIGHT SCROLLABLE CONTENT
      Expanded(
        flex: 3,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey, letterSpacing: 2),
                  children: [
                    const TextSpan(
                      text:
                          "I’m a developer passionate about crafting accessible, pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development, creating experiences that not only look great but are meticulously built for performance and usability.\n\nCurrently, I'm a Senior Mobile App Developer at ",
                    ),
                    TextSpan(
                      text: "Reactree",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const TextSpan(
                      text:
                          ", specializing in accessibility. I contribute to the creation and maintenance of UI components that power, ensuring our platform meets web accessibility standards and best practices to deliver an inclusive user experience.\n\nIn the past, I've had the opportunity to develop software across a variety of settings from ",
                    ),
                    TextSpan(
                      text: "advertising agencies",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const TextSpan(text: " and "),
                    TextSpan(
                      text: "large corporations",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const TextSpan(text: " to "),
                    TextSpan(
                      text: "start-ups",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const TextSpan(text: " and "),
                    TextSpan(
                      text: "small digital product studios",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const TextSpan(
                      text: ". I’m usually climbing, reading, hanging out with friends.",
                    ),
                  ],
                ),
              ),
              60.verticalSpace,
              SectionTitle("Experience"),
              20.verticalSpace,
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 22, 45),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "2024--PRESENT",
                              style: TextStyle(fontSize: 16), // Optional
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Senior Mobile App Developer, Reactree Pvt. Ltd",
                              style: GoogleFonts.inter(fontSize: 14, color: Colors.cyan),
                            ),
                            10.verticalSpace,
                            Text("pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,"),
                            10.verticalSpace,
                            Wrap(
                              spacing: 10,
                              runSpacing: 6,
                              children: tools
                                  .map((tool) => Chip(
                                        label: Text(tool),
                                        backgroundColor: Colors.teal[700],
                                        labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                      ))
                                  .toList(),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              30.verticalSpace,
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 22, 45),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "2023-—2023",
                              style: TextStyle(fontSize: 16), // Optional
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Flutter Mobile App Developer, Innovative Network Pvt. Ltd",
                              style: GoogleFonts.inter(fontSize: 14, color: Colors.cyan),
                            ),
                            10.verticalSpace,
                            Text("pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,"),
                            10.verticalSpace,
                            Wrap(
                              spacing: 10,
                              runSpacing: 6,
                              children: tools
                                  .map((tool) => Chip(
                                        label: Text(tool),
                                        backgroundColor: Colors.teal[700],
                                        labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                      ))
                                  .toList(),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              30.verticalSpace,
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 11, 22, 45),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "2022—-2023",
                              style: TextStyle(fontSize: 16), // Optional
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Junior Flutter Engineeer, Avialdo Solutions",
                              style: GoogleFonts.inter(fontSize: 14, color: Colors.cyan),
                            ),
                            10.verticalSpace,
                            Text("pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,"),
                            10.verticalSpace,
                            Wrap(
                              spacing: 10,
                              runSpacing: 6,
                              children: tools
                                  .map((tool) => Chip(
                                        label: Text(tool),
                                        backgroundColor: Colors.teal[700],
                                        labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                      ))
                                  .toList(),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              60.verticalSpace,

              SectionTitle("Projects"),
              // SectionText("Spotify Profile, WebGL demos, React apps, Node.js APIs..."),
              30.verticalSpace,
              projectCardWeb("assets/images/badgerr.png", "Badgerr", "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.", context),
              40.verticalSpace,
              projectCardWeb("assets/images/jtc.png", "title", "desc", context),
              40.verticalSpace,
              projectCardWeb("assets/images/pinch.png", "title", "desc", context),
              40.verticalSpace,
              projectCardWeb("assets/images/ucr.png", "title", "desc", context),
              40.verticalSpace,
              projectCardWeb("assets/images/user.png", "title", "desc", context),
              40.verticalSpace,
              projectCardWeb("assets/images/agent.png", "title", "desc", context),
              40.verticalSpace,
              projectCardWeb("assets/images/lookna.png", "title", "desc", context),
              
              60.verticalSpace,
              Row(
                children: [
                  HoverText(
                    text: "View Full Projects",
                    onTap: () {
                      Navigator.pushNamed(context, '/projects');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget mobileLayout(BuildContext context) {
  final tools = ["flutter", "android", "ios"];

  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          50.verticalSpace,
          Text(
            "Ahmer Khan",
            style: GoogleFonts.inter(fontSize: 30, fontWeight: FontWeight.w800),
          ),
          SizedBox(height: 8),
          Text(
            "Mobile Applications Engineer",
            style: GoogleFonts.inter(fontSize: 16, color: Colors.grey),
          ),
          100.verticalSpace,
          Row(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    height: 30,
                    width: 30,
                    "assets/images/git.svg",
                    fit: BoxFit.cover,
                  )),
              10.horizontalSpace,
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    height: 30,
                    width: 30,
                    "assets/images/li.svg",
                    fit: BoxFit.cover,
                  )),
            ],
          ),
          50.verticalSpace,
          SizedBox(height: 24),
          Text("ABOUT", style: GoogleFonts.inter(letterSpacing: 2)),
          SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: GoogleFonts.inter(fontSize: 16, color: Colors.grey, letterSpacing: 2),
              children: [
                const TextSpan(
                  text:
                      "I’m a developer passionate about crafting accessible, pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development, creating experiences that not only look great but are meticulously built for performance and usability.\n\nCurrently, I'm a Senior Mobile App Developer at ",
                ),
                TextSpan(
                  text: "Reactree",
                  style: const TextStyle(color: Colors.white),
                ),
                const TextSpan(
                  text:
                      ", specializing in accessibility. I contribute to the creation and maintenance of UI components that power, ensuring our platform meets web accessibility standards and best practices to deliver an inclusive user experience.\n\nIn the past, I've had the opportunity to develop software across a variety of settings from ",
                ),
                TextSpan(
                  text: "advertising agencies",
                  style: const TextStyle(color: Colors.white),
                ),
                const TextSpan(text: " and "),
                TextSpan(
                  text: "large corporations",
                  style: const TextStyle(color: Colors.white),
                ),
                const TextSpan(text: " to "),
                TextSpan(
                  text: "start-ups",
                  style: const TextStyle(color: Colors.white),
                ),
                const TextSpan(text: " and "),
                TextSpan(
                  text: "small digital product studios",
                  style: const TextStyle(color: Colors.white),
                ),
                const TextSpan(
                  text: ". I’m usually climbing, reading, hanging out with friends.",
                ),
              ],
            ),
          ),
          60.verticalSpace,
          Text("EXPERIENCE", style: GoogleFonts.inter(letterSpacing: 2)),
          20.verticalSpace,
          SizedBox(height: 8),
          Text("PROJECTS", style: GoogleFonts.inter(letterSpacing: 2)),
          20.verticalSpace,
          projectCardMobile("assets/images/badgerr.png", "Badger", "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.", context),
          20.verticalSpace,
          projectCardMobile("assets/images/jtc.png", "title", "desc", context),
          20.verticalSpace,
          projectCardMobile("assets/images/pinch.png", "title", "desc", context),
          20.verticalSpace,
          projectCardMobile("assets/images/ucr.png", "title", "desc", context),
          20.verticalSpace,
          projectCardMobile("assets/images/user.png", "title", "desc", context),
          20.verticalSpace,
          projectCardMobile("assets/images/agent.png", "title", "desc", context),
          20.verticalSpace,
          projectCardMobile("assets/images/lookna.png", "title", "desc", context),
        ],
      ),
    ),
  );
}
