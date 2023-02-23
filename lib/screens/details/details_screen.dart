import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';
import 'package:stylish/models/Product.dart';
import 'package:stylish/screens/details/components/coloe_dot.dart';
import 'package:stylish/screens/home/home_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset("assets/icons/Heart.svg")))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),const SizedBox(height: defaultPadding,),
          Expanded(
              child: Container(
            padding: const EdgeInsets.fromLTRB(defaultPadding,
                defaultPadding * 2, defaultPadding, defaultPadding),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                )),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "\$" + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                        "A Henley shirt is a collarless pullover shirt by a round nickline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2-5buttons"),
                  ),
                  const Text(
                    "Colors",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: defaultPadding/2,),
                  Row(
                    children: [

                      ColorDot(
                        color:const Color(0xFFBEE8EA) ,
                        press:  (){},
                        isActive: false ,
                      ),  ColorDot(
                        color:const Color(0xFF141B4A) ,
                        press:  (){},
                        isActive: true ,
                      ),
                      ColorDot(
                        color:const Color(0xFFF4E5C3) ,
                        press:  (){},
                        isActive: false ,
                      )
                    ],
                  ),
                  SizedBox(height: defaultPadding*2,),
                  Center(
                    child: SizedBox(
                      width: 200,
                      height: 55,
                      child: ElevatedButton(onPressed: (){},
                          child: const Text("Add To Cart"),
                        style: ElevatedButton.styleFrom(backgroundColor:primaryColor,shape: StadiumBorder() ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

