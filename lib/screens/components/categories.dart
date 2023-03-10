import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Category.dart';
class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children:
            List.generate(demo_categories.length,(index)=>
              Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: CategoryCard(
                  title:demo_categories[index].title,
                  icon: demo_categories[index].icon,
                  press: (){},
                ),
              ),
            )

      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon,title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(

        onPressed: press,
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(defaultBorderRadius))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 4,
              vertical: defaultPadding /2),
          child: Column(
            children: [
              SvgPicture.asset(icon),
              SizedBox(
                  height: defaultPadding*1.5,
                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  )
              )
            ],
          ),
        ));
  }
}
