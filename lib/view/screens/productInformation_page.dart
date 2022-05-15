import 'package:delivery/view/widgets/container_productinformation.dart';
import 'package:flutter/material.dart';

class ProductInformationPage extends StatefulWidget {
  const ProductInformationPage({Key? key}) : super(key: key);

  @override
  State<ProductInformationPage> createState() => _ProductInformationPageState();
}

class _ProductInformationPageState extends State<ProductInformationPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFFEEBC1),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEEBC1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/burguerTest.png',
              height: _size.height / 3,
            ),
            const ContainerProductInformation(),
          ],
        ),
      ),
    );
  }
}
