import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BannerPlaceholder extends StatelessWidget {
  const BannerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade600,
        highlightColor: Colors.grey.shade500,
        enabled: true,
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Container(
                height: 20,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

enum ContentLineType {
  twoLines,
  threeLines,
}

class ContentPlaceholder extends StatelessWidget {
  final ContentLineType lineType;

  const ContentPlaceholder({
    super.key,
    required this.lineType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade600,
        highlightColor: Colors.grey.shade500,
        enabled: true,
        child: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 96.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 20.0,
                        color: Colors.white,
                        margin: const EdgeInsets.only(bottom: 8.0),
                      ),
                      if (lineType == ContentLineType.threeLines)
                        Container(
                          width: double.infinity,
                          height: 10.0,
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 8.0),
                        ),
                      Container(
                        width: 100.0,
                        height: 10.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 96.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 20.0,
                        color: Colors.white,
                        margin: const EdgeInsets.only(bottom: 8.0),
                      ),
                      if (lineType == ContentLineType.threeLines)
                        Container(
                          width: double.infinity,
                          height: 10.0,
                          color: Colors.white,
                          margin: const EdgeInsets.only(bottom: 8.0),
                        ),
                      Container(
                        width: 100.0,
                        height: 10.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
