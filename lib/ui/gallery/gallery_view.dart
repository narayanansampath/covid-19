import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/zoomable.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GalleryView extends StatelessWidget {
  String appBarTitle;
  List<String> images;

  GalleryView({this.appBarTitle, this.images});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Swiper(
          itemCount: images.length,
          pagination: new SwiperPagination(
              builder: const DotSwiperPaginationBuilder(
                  size: 7.0,
                  space: 5.0,
                  activeColor: Colors.black,
                  color: Colors.grey)),
          loop: true,
          itemBuilder: (BuildContext context, int index) {
            return ZoomableWidget(
              minScale: 0.3,
              maxScale: 2.0,
              // default factor is 1.0, use 0.0 to disable boundary
              panLimit: 0.8,
              child: Image.asset(images[index]),
            );
          }),
    );
  }
}
