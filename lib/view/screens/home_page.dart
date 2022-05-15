import 'package:delivery/view/widgets/banner_offers.dart';
import 'package:delivery/view/widgets/card_product.dart';
import 'package:delivery/view/widgets/categories.dart';
import 'package:delivery/view/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
Esta página é referente a tela inicial do aplicativo, onde o usuário será 
redirecionado após fazer o login / cadastro no aplicativo(Será redirecionado a
página Structure que puxará a HomePage como padrão).
This page refers to the application's home screen, where the user will be
redirected after logging in / registering in the app (You will be redirected to
Structure page which will pull the HomePage by default).
*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Clicou no container de ofertas');
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        BannerOffers(
                          image: 'assets/images/burguer.png',
                          textBanner: 'Oferta válida até 00/00/0000',
                          textValue: '50% OFF',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Categorias',
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Ver Todos',
                              style: TextStyle(
                                color: Color(0xFFFF7052),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Categories(
                                image:
                                    'assets/images/categories/burguerFries.png',
                                text: 'Hambúrguer'),
                            Categories(
                                image: 'assets/images/categories/vegan.png',
                                text: 'Vegano'),
                            Categories(
                                image:
                                    'assets/images/categories/cupcake.png',
                                text: 'Sobremesas'),
                            Categories(
                                image: 'assets/images/categories/drink.png',
                                text: 'Bebidas'),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 20,
                        color: Colors.black,
                      ),
                      GridView.count(
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        childAspectRatio: _size.aspectRatio,
                        crossAxisCount: 2,
                        children: [
                          CardProduct(
                            image: 'assets/images/burguerTest.png',
                            title: 'X-Tudo',
                            text: 'Test Subtitle',
                            price: '00,00',
                          ),
                          CardProduct(
                            image: 'assets/images/burguerTest.png',
                            title: 'X-Tudo',
                            text: 'Test Subtitle',
                            price: '00,00',
                          ),
                          CardProduct(
                            image: 'assets/images/burguerTest.png',
                            title: 'X-Tudo',
                            text: 'Test Subtitle',
                            price: '00,00',
                          ),
                          CardProduct(
                            image: 'assets/images/burguerTest.png',
                            title: 'X-Tudo',
                            text: 'Test Subtitle',
                            price: '00,00',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
