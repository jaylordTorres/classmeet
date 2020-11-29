import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UiCardMedia extends StatelessWidget {
  final String url;
  const UiCardMedia({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
        widthFactor: 1,
        child: AspectRatio(
          aspectRatio: 100 / 50,
          child: Container(
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: CachedNetworkImage(
              imageUrl: this.url,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  CircularProgressIndicator(value: downloadProgress.progress),
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                ),
                child: Container(
                  child: Text('1'),
                ),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ));
  }
}
