import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';


class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Catalog App".text.bold.xl5.color(context.theme.accentColor).make(),
          "Trending Apps".text.xl2.make(),
        ],
      ),
    );
  }
}
