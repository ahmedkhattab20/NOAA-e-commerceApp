import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Category.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/cart/cart_screen.dart';
import 'package:stylish/screens/components/categories.dart';
import 'package:stylish/screens/components/new_arrival.dart';
import 'package:stylish/screens/components/popular.dart';
import 'package:stylish/screens/components/product_card.dart';
import 'package:stylish/screens/components/search_form.dart';
import 'package:stylish/screens/components/section_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '15/2 New Taxes',
              style: Theme.of(context).textTheme.subtitle2,
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen(),));

            },
            icon:const  Icon(Icons.shopping_cart,color: Color.fromRGBO(
                175, 173, 173, 0.9215686274509803)),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
          ),

        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            const Text('best Outfits for you', style: TextStyle(fontSize: 18)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: searchForm(),
            ),
            const Categories(),
            const SizedBox(height: defaultPadding / 2,),
            const NewArrival(),
            const SizedBox(height: defaultPadding / 2,),
            const Popular(),




          ],
        ),
      ),
    );
  }
}



