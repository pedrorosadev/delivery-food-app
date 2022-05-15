import 'package:delivery/view/screens/productInformation_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
Este widget personalizado é referente ao Card dos produtos em venda.
This custom widget refers to the Card of the products on sale.
*/

class CardProduct extends StatelessWidget {
  CardProduct(
      {Key? key,
      required this.image,
      required this.text,
      required this.title,
      required this.price})
      : super(key: key);

  final String image;
  final String title;
  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //debugPrint('Clicou em Card Product');
        Get.to(() => const ProductInformationPage());
      },
      child: Container(
        decoration: BoxDecoration(
          //border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.amber.withOpacity(0.8),
              Colors.amberAccent.withOpacity(0.5),
              Colors.amber.withOpacity(0),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              text,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 14,
                color: Color(0xFF787993),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'R\$ ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.redAccent,
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
