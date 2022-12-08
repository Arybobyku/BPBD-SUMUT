import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCaraousel extends StatelessWidget {
  const CustomCaraousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   CarouselSlider(
      options: CarouselOptions(height: 170.0),
      items: [1].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              alignment: Alignment.center,
              child: CachedNetworkImage(
                imageUrl:
                "https://testappsmobile.site/storage/app/banner.png",
                height: 200,
                width: double.infinity,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.error)),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
