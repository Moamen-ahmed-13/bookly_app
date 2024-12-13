import 'package:bookly_app/Features/splash/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItemResult extends StatelessWidget {
  const BestSellerListViewItemResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: BestSellerListViewItem(),
        );
      },
    );
    
  }
}
