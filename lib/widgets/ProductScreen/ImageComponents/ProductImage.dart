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
      loadingBuilder: (context, child, loadingProgess){
        if(loadingProgess == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgess.expectedTotalBytes != null
                ? loadingProgess.cumulativeBytesLoaded / loadingProgess.expectedTotalBytes!
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
