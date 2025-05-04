import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web/utilities/breakpoints.dart';
import 'package:flutter_web/utilities/extensions.dart';
import 'package:flutter_web/utilities/hover_text.dart';
import 'package:flutter_web/utilities/left_sidebar.dart';
import 'package:flutter_web/utilities/project_card.dart';
import 'package:flutter_web/utilities/section_tile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
  final List<String> skills = [
    'Flutter',
    'dart',
    'Android',
    'iOS',
    'kotlin',
    'firebase',
    'Apple sdks',
    'Google Sdks',
    'Serverpod',
    'Test-driven Development (TDD)',
    'Unit Testing',
    'Extreme Programming (XP)',
    'Feature Flagging',
    'Layered Architecture',
    'Modular Architecture',
    'Bloc',
    'Micro Frontends',
    'Software Design Patterns',
    'MVC',
    'MVVM',
    'MVVM-C',
    'MVP',
    'Singleton',
    'Reactive Programming',
    'Networking',
    'REST APIs',
    'Payment Gateways',
    'Stripe',
    'GraphQL',
    'Databases',
    'Mongo DB',
    'PhpMyAdmin',
    'cPanel',
    'Hive DB',
    'SQFlite',
    'Git',
    'GitHub',
    'BitBucket',
    'UI/UX',
    'Figma',
    'Sketch',
    'Bitrise',
    'Fastlane',
    'Continuous Integration & Deployment (CI/CD)',
    'GitHub Actions & Workflows',
    'Dependency Injection',
    'Postman',
    'Thunderbolt',
    'Project Management',
    'JIRA',
    'Asaana',
    'Click Up',
    'Manual Deployements',
    'App Store Publishing',
    'Play Store Publishing',
    "App Store / Play Store Rejections",
    'Xcode',
    'Android Studio',
    'VS Code',
    'IntelliJ IDEA',
    'DartPad',
    'FlutterFlow',
  ];

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
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    color: Colors.grey,
                    letterSpacing: 2,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "Building mobile apps today demands more than just smooth interfaces — it requires accessibility, performance, and seamless user experiences at every interaction. Focusing on the intersection of thoughtful design and robust engineering, I craft pixel-perfect, accessible UI components that are not only visually appealing but meticulously optimized for usability and speed.\n\nAs a Senior Mobile App Developer at ",
                    ),
                    TextSpan(
                      text: "Reactree",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const TextSpan(
                      text:
                          ", I specialize in accessibility, contributing to the creation and maintenance of UI frameworks that align with modern web accessibility standards. I have hands-on experience with complex state management patterns (like GetX, Provider, Bloc), offline data storage strategies (using SQLite, Hive, and local caching mechanisms), and advanced mobile debugging techniques to diagnose, profile, and optimize app performance even under challenging conditions.\n\nOver the past ",
                    ),
                    TextSpan(
                      text: "4+ years",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const TextSpan(
                      text: ", I’ve worked across multiple firms and software houses, delivering production-ready mobile applications and ",
                    ),
                    TextSpan(
                      text: "MVPs",
                      style: const TextStyle(color: Colors.white),
                    ),
                    const TextSpan(
                      text: " for diverse industries. This experience has shaped my ability to build scalable, maintainable products that balance speed, quality, and user needs.",
                    ),
                  ],
                ),
              ),

              60.verticalSpace,
              SectionTitle("Experience"),
              20.verticalSpace,
              Container(
                decoration: BoxDecoration(
                  // color: const Color.fromARGB(255, 11, 22, 45),
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
                            child: Row(
                              children: [
                                Text(
                                  "2024",
                                  style: TextStyle(fontSize: 16), // Optional
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 1.0,
                                  width: 20,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Present",
                                  style: TextStyle(fontSize: 16), // Optional
                                ),
                              ],
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
                  // color: const Color.fromARGB(255, 11, 22, 45),
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
                            child: Row(
                              children: [
                                Text(
                                  "2023",
                                  style: TextStyle(fontSize: 16), // Optional
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 1.0,
                                  width: 20,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2024",
                                  style: TextStyle(fontSize: 16), // Optional
                                ),
                              ],
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
                  // color: const Color.fromARGB(255, 11, 22, 45),
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
                            child: Row(
                              children: [
                                Text(
                                  "2022",
                                  style: TextStyle(fontSize: 16), // Optional
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 1.0,
                                  width: 20,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "2023",
                                  style: TextStyle(fontSize: 16), // Optional
                                ),
                              ],
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
              projectCardWeb(
                  "assets/images/badgerr.png",
                  "Badgerr",
                  "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.",
                  context),
              40.verticalSpace,
              projectCardWeb("assets/images/jtc.png", "JTC Fundraiser", "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.", context),
              40.verticalSpace,
              projectCardWeb("assets/images/pinch.png", "Pinch.om", "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.", context),
              40.verticalSpace,
              projectCardWeb("assets/images/ucr.png", "Ucrypted", "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.", context),
              40.verticalSpace,
              projectCardWeb("assets/images/user.png", "Mozaic User App", "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.", context),
              40.verticalSpace,
              projectCardWeb("assets/images/agent.png", "Mozaic Agent App", "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.", context),
              40.verticalSpace,
              projectCardWeb("assets/images/lookna.png", "Lookna", "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.", context),

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
              60.verticalSpace,

              SectionTitle("Technical Skills"),
              30.verticalSpace,
              SingleChildScrollView(
                child: Wrap(
                  spacing: 8, 
                  runSpacing: 8, 
                  children: skills
                      .map((skill) => Chip(
                            labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            padding: EdgeInsets.zero,
                            label: Text(
                              skill,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 12, 
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.teal[600],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget mobileLayout(BuildContext context) {
  // final tools = ["flutter", "android", "ios"];
  final List<String> skills = [
    'Flutter',
    'dart',
    'Android',
    'iOS',
    'kotlin',
    'firebase',
    'Apple sdks',
    'Google Sdks',
    'Serverpod',
    'Test-driven Development (TDD)',
    'Unit Testing',
    'Extreme Programming (XP)',
    'Feature Flagging',
    'Layered Architecture',
    'Modular Architecture',
    'Bloc',
    'Micro Frontends',
    'Software Design Patterns',
    'MVC',
    'MVVM',
    'MVVM-C',
    'MVP',
    'Singleton',
    'Reactive Programming',
    'Networking',
    'REST APIs',
    'Payment Gateways',
    'Stripe'
        'GraphQL',
    'Databases',
    'Mongo DB',
    'PhpMyAdmin',
    'cPanel',
    'Hive DB',
    'SQFlite',
    'Git',
    'GitHub',
    'BitBucket',
    'UI/UX',
    'Figma',
    'Sketch',
    'Bitrise',
    'Fastlane',
    'Continuous Integration & Deployment (CI/CD)',
    'GitHub Actions & Workflows',
    'Dependency Injection',
    'Postman',
    'Thunderbolt',
    'Project Management',
    'JIRA',
    'Asaana',
    'Click Up',
    'Manual Deployements',
    'App Store Publishing',
    'Play Store Publishing',
    "App Store / Play Store Rejections",
    'Xcode',
    'Android Studio',
    'VS Code',
    'IntelliJ IDEA',
    'DartPad',
    'FlutterFlow',
  ];

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
                onTap: () async {
                  const url = 'https://github.com/mahmerkhan';
                  if (await canLaunchUrl(Uri.parse(url))) {
                    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: SvgPicture.asset(
                  "assets/images/git.svg",
                  height: 30,
                  width: 30,
                ),
              ),
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
                  "assets/images/li.svg",
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          50.verticalSpace,
          SizedBox(height: 24),
          Text("ABOUT", style: GoogleFonts.inter(letterSpacing: 2, fontSize: 15)),
          SizedBox(height: 8),
          RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: GoogleFonts.inter(
                fontSize: 11,
                color: Colors.grey,
                letterSpacing: 2,
              ),
              children: [
                const TextSpan(
                  text:
                      "Building mobile apps today demands more than just smooth interfaces — it requires accessibility, performance, and seamless user experiences at every interaction.\n\nFocusing on the intersection of thoughtful design and robust engineering, I craft pixel-perfect, accessible UI components that are not only visually appealing but meticulously optimized for usability and speed.\n\nAs a Senior Mobile App Developer at ",
                ),
                TextSpan(
                  text: "Reactree",
                  style: const TextStyle(color: Colors.white),
                ),
                const TextSpan(
                  text:
                      ", I specialize in accessibility, contributing to the creation and maintenance of UI frameworks that align with modern web accessibility standards. I have hands-on experience with complex state management patterns (like GetX, Provider, Bloc), offline data storage strategies (using SQLite, Hive, and local caching mechanisms), and advanced mobile debugging techniques to diagnose, profile, and optimize app performance even under challenging conditions.\n\nOver the past ",
                ),
                TextSpan(
                  text: "4+ years",
                  style: const TextStyle(color: Colors.white),
                ),
                const TextSpan(
                  text: ", I’ve worked across multiple firms and software houses, delivering production-ready mobile applications and ",
                ),
                TextSpan(
                  text: "MVPs",
                  style: const TextStyle(color: Colors.white),
                ),
                const TextSpan(
                  text: " for diverse industries. This experience has shaped my ability to build scalable, maintainable products that balance speed, quality, and user needs.",
                ),
              ],
            ),
          ),
          60.verticalSpace,
          Text("EXPERIENCE", style: GoogleFonts.inter(letterSpacing: 2, fontSize: 15)),
          20.verticalSpace,
          Container(
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 11, 22, 45),
              // borderRadius: BorderRadius.circular(12),
              // border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "2024",
                            style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2), // Optional
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 1.0,
                            width: 18,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Present",
                            style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2), // Optional
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.verticalSpace,
                    Text(
                      "Senior Mobile App Developer, Reactree Pvt. Ltd",
                      style: GoogleFonts.inter(fontSize: 12, color: Colors.cyan),
                    ),
                    10.verticalSpace,
                    Text(
                      "pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,",
                      style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2),
                    ),
                    10.verticalSpace,
                  ],
                )
              ],
            ),
          ),
          20.verticalSpace,
          Container(
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 11, 22, 45),
              // borderRadius: BorderRadius.circular(12),
              // border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "2024",
                            style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2), // Optional
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 1.0,
                            width: 18,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Present",
                            style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2), // Optional
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.verticalSpace,
                    Text(
                      "Senior Mobile App Developer, Reactree Pvt. Ltd",
                      style: GoogleFonts.inter(fontSize: 12, color: Colors.cyan),
                    ),
                    10.verticalSpace,
                    Text(
                      "pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,",
                      style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2),
                    ),
                    10.verticalSpace,
                  ],
                )
              ],
            ),
          ),
          20.verticalSpace,
          Container(
            decoration: BoxDecoration(
              // color: const Color.fromARGB(255, 11, 22, 45),
              // borderRadius: BorderRadius.circular(12),
              // border: Border.all(color: const Color.fromARGB(255, 56, 56, 56)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Text(
                            "2024",
                            style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2), // Optional
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 1.0,
                            width: 18,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2.0), color: Colors.grey),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Present",
                            style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2), // Optional
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.verticalSpace,
                    Text(
                      "Senior Mobile App Developer, Reactree Pvt. Ltd",
                      style: GoogleFonts.inter(fontSize: 12, color: Colors.cyan),
                    ),
                    10.verticalSpace,
                    Text(
                      "pixel-perfect user interfaces that blend thoughtful design with robust engineering. My favorite work lies at the intersection of design and development,",
                      style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 2),
                    ),
                    10.verticalSpace,
                  ],
                )
              ],
            ),
          ),
          30.verticalSpace,
          Text("PROJECTS", style: GoogleFonts.inter(letterSpacing: 2, fontSize: 15)),
          20.verticalSpace,
          projectCardMobile(
              "assets/images/badgerr.png",
              "Badger",
              "Badgerr is an online gamified application in which end user can create challenges and admin can accept or reject these challenges and assign winners and allocate prizes and badges. Admin can also add tutorials and articles to share important news.",
              context),
          20.verticalSpace,
          projectCardMobile("assets/images/jtc.png", "JTC Fundraiser", "JTC Fundraiser", context),
          20.verticalSpace,
          projectCardMobile("assets/images/pinch.png", "Pinch.om", "Pinch", context),
          20.verticalSpace,
          projectCardMobile("assets/images/ucr.png", "Ucrypted", "Ucrypted", context),
          20.verticalSpace,
          projectCardMobile("assets/images/user.png", "Mozaic User App", "Mozaic User App", context),
          20.verticalSpace,
          projectCardMobile("assets/images/agent.png", "Mozaic Agent App", "Mozaic Agent App", context),
          20.verticalSpace,
          projectCardMobile("assets/images/lookna.png", "Lookna", "Lookna", context),
          30.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/projects');
                },
                child: Text(
                  "View Full Projects",
                  style: GoogleFonts.inter(fontSize: 11, color: Colors.grey, letterSpacing: 1.5),
                ),
              ),
            ],
          ),
          30.verticalSpace,
          Text("Technical Skills", style: GoogleFonts.inter(letterSpacing: 2, fontSize: 15)),
          30.verticalSpace,
          SingleChildScrollView(
            child: Wrap(
              spacing: 8, // Small space horizontally
              runSpacing: 8, // Small space vertically
              children: skills
                  .map((skill) => Chip(
                        labelPadding: const EdgeInsets.symmetric(horizontal: 8),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        padding: EdgeInsets.zero,
                        label: Text(
                          skill,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12, // Smaller text
                            color: Colors.white,
                          ),
                        ),
                        backgroundColor: Colors.teal[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ))
                  .toList(),
            ),
          ),
          30.verticalSpace,
        ],
      ),
    ),
  );
}
