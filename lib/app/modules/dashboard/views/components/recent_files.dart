import 'package:flutter/material.dart';
import 'package:flutter_dashboard/app/_shared/constants.dart';
import 'package:flutter_dashboard/app/data/models/recent_files.dart';
import 'package:flutter_svg/svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: const [
                  DataColumn(label: Text("File Name")),
                  DataColumn(label: Text("Date")),
                  DataColumn(label: Text("Size")),
                ],
                rows: List.generate(demoRecentFiles.length,
                    (index) => recentFileDataRow(demoRecentFiles[index]))),
          )
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile file) {
    return DataRow(cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              file.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(file.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(file.date!)),
      DataCell(Text(file.size!)),
    ]);
  }
}
