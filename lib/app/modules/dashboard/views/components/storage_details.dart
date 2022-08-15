import 'package:flutter/material.dart';
import 'package:flutter_dashboard/app/_shared/constants.dart';
import 'package:flutter_dashboard/app/modules/dashboard/views/components/chart.dart';
import 'package:flutter_dashboard/app/modules/dashboard/views/components/storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

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
          const Text(
            "Storage Details",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          const StorageInfoCard(
            numberOfFiles: 1329,
            amountOfFiles: '1.3GB',
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Document Files',
          ),
          const StorageInfoCard(
            numberOfFiles: 1329,
            amountOfFiles: '15.3GB',
            svgSrc: 'assets/icons/media.svg',
            title: 'Media Files',
          ),
          const StorageInfoCard(
            numberOfFiles: 1329,
            amountOfFiles: '15.3GB',
            svgSrc: 'assets/icons/folder.svg',
            title: 'Other Files',
          ),
          const StorageInfoCard(
            numberOfFiles: 140,
            amountOfFiles: '15.3GB',
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Unknown Files',
          ),
        ],
      ),
    );
  }
}
