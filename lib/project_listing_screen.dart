import 'package:flutter/material.dart';
import 'package:flutter_web/utilities/extensions.dart';
class ProjectListingScreen extends StatelessWidget {
  const ProjectListingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      "← Muhammad Ahmer Khan",
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                16.verticalSpace,
                const Text(
                  "All Projects",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                32.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(minWidth: constraints.maxWidth),
                          child: DataTable(
                            columnSpacing: 40,
                            columns: const [
                              DataColumn(
                                label: Text("Year", style: TextStyle(color: Colors.white)),
                              ),
                              DataColumn(
                                label: Text("Project", style: TextStyle(color: Colors.white)),
                              ),
                              DataColumn(
                                label: Text("Made at", style: TextStyle(color: Colors.white)),
                              ),
                              DataColumn(
                                label: Text("Built with", style: TextStyle(color: Colors.white)),
                              ),
                              DataColumn(
                                label: Text("Link", style: TextStyle(color: Colors.white)),
                              ),
                            ],
                            rows: _projectRows,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
final List<DataRow> _projectRows = [
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
  projectRow(
    year: "2022",
    project: "LinkedUnion",
    company: "Avialdo Solutions",
    tools: ["flutter", "android", "ios"],
    link: "",
  ),
];
DataRow projectRow({
  required String year,
  required String project,
  required String company,
  required List<String> tools,
  required String link,
}) {
  return DataRow(cells: [
    DataCell(Text(year, style: _cellStyle)),
    DataCell(Text(project, style: _boldStyle)),
    DataCell(Text(company, style: _cellStyle)),
    DataCell(Wrap(
      spacing: 10,
      runSpacing: 6,
      children: tools
          .map((tool) => Chip(
                label: Text(tool),
                backgroundColor: Colors.teal[700],
                labelStyle: const TextStyle(color: Colors.white, fontSize: 12),
              ))
          .toList(),
    )),
    DataCell(
      link.isNotEmpty
          ? InkWell(
              onTap: () {
                // Open link with url_launcher or leave as is
              },
              child: Text(
                link,
                style: const TextStyle(color: Colors.blueAccent),
              ),
            )
          : const Text(""),
    ),
  ]);
}
const TextStyle _cellStyle = TextStyle(color: Colors.white70);
const TextStyle _boldStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14);