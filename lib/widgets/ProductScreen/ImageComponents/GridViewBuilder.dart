import 'package:flutter/cupertino.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key, required this.itemCount, required this.spacing, required this.crossAxisCount, required this.itemBuilder, required this.url});
  final int itemCount; // antal bilder
  final double spacing; // avstånd mellan
  final int crossAxisCount; // columner
  final IndexedWidgetBuilder itemBuilder; // funktion som skapar varje dimension i grid
  final List<String> url;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index){
        return Padding(
            padding: const EdgeInsets.all(10.0),
        child:  Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url[index]),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(9.0)

          ),
        )
        );
      },
    );
  }
}
