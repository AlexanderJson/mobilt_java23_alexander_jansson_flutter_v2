import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ScreenService.dart';

class ProductImage extends StatelessWidget {
  final String url;

  final BoxFit fit;



  const ProductImage({
    super.key, required this.url,  required this.fit
  });

  @override
  Widget build(BuildContext context) {
    final imgDimensions = ScreenService.editImage();
    final width = imgDimensions["width"];
    final height = imgDimensions["height"];


    return Image.network(
      url,
      width: width,
      height: height,
      fit: fit,
      loadingBuilder: (context, child, loadingProgress){
        if(loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
      errorBuilder: (context,error,stackTrace){
        return const Icon(Icons.error, color: Colors.red,);
      },
    );
  }
}
