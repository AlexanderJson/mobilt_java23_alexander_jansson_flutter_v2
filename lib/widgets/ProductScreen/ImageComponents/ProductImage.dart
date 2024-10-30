import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;
  final BoxFit fit;


  const ProductImage({
    super.key, required this.url,required this.width, required this.height,  required this.fit
  });

  @override
  Widget build(BuildContext context) {
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
