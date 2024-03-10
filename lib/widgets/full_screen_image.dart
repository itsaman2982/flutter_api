import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';

class FullScreenImageView extends StatelessWidget {
  const FullScreenImageView({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: kToolbarHeight,
                width: kToolbarHeight,
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: () {
                    Get.back();
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ).paddingSymmetric(vertical: 16),
              Expanded(
                child: PhotoView(
                  backgroundDecoration: const BoxDecoration(color: Colors.white),
                  imageProvider: NetworkImage(url),
                  loadingBuilder: (context, event) => const Center(
                    child: SizedBox(
                        height: 30,
                        width: 30,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
