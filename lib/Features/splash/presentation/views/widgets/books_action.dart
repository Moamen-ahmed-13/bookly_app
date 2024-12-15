import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: CustomButton(
          text: 'Free',
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
        )),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              Uri uri = Uri.parse(bookModel.volumeInfo.previewLink!);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              }
            },
            fontSize: 16,
            text: getText(bookModel),
            backgroundColor: const Color(0xffED8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (!(bookModel.volumeInfo.previewLink == null)) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
