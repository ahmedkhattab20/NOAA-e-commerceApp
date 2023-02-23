import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
class ProductCard extends StatelessWidget {
  final String image,title;
  final Color bgColor;
  final int price;
  final VoidCallback press;
  const ProductCard({
    required this.title,
    required this.image,
    required this.bgColor,
    required  this.price,
    required this.press,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(defaultPadding / 2),

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(defaultBorderRadius)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius:
                  BorderRadius.circular(defaultBorderRadius)),
              child: Image.asset(image,
                  height: 132),
            ),
            SizedBox(height: defaultPadding/2,),

            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
                const  SizedBox(width: defaultPadding/4,),
                Text('\$'+price.toString(),
                    style: Theme.of(context).textTheme.subtitle2)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
