import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/constants.dart';

class searchForm extends StatelessWidget {
  const searchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search items...",
              filled: true,
              fillColor: Colors.white,
              border: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset("assets/icons/Search.svg"),
              ),
              suffixIcon: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: defaultPadding/2),
                child: SizedBox(
                  width: 48,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                defaultBorderRadius))),
                    onPressed: () {},
                    child: SvgPicture.asset("assets/icons/Filter.svg"),
                  ),
                ),
              )),
        ));
  }
}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide.none,
);
