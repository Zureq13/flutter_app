import 'package:flutter/material.dart';
import 'package:flutter_application_2/details.dart';

class CardItem extends StatelessWidget {
  final String productName;
  final String asset;
  final String desc;
  final String price;

  const CardItem(
      {Key? key,
      required this.productName,
      required this.asset,
      required this.desc,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondRoute(
                productName: productName,
                desc: desc,
                asset: asset,
                price: price,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white,
            child: Row(
              children: [
                const Spacer(flex: 1),
                Text(productName),
                const Spacer(flex: 1),
                Image.asset(asset),
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
