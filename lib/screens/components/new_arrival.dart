import 'package:flutter/material.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/components/product_card.dart';
import 'package:stylish/screens/components/section_title.dart';
import 'package:stylish/screens/details/details_screen.dart';
class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "New Arrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ...List.generate(demo_product.length, (index) =>
                  Padding(
                    padding: const EdgeInsets.only(left:defaultPadding),
                    child: ProductCard(
                      title: demo_product[index].title,
                      bgColor: demo_product[index].bgColor,
                      image: demo_product[index].image,
                      price: demo_product[index].price,
                      press: (){

Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(product: demo_product[index],)   ));
                      },
                    ),
                  ))
            ],),
        )
      ],
    );
  }
}
