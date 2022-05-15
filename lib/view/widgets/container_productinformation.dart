// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerProductInformation extends StatefulWidget {
  const ContainerProductInformation({Key? key}) : super(key: key);

  @override
  State<ContainerProductInformation> createState() =>
      _ContainerProductInformationState();
}

class _ContainerProductInformationState
    extends State<ContainerProductInformation> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    //Função referente a quantidade de produtos que o usuário escolherá.
    //Function referring to the amount of products that the user will choose.
    RxInt _count = 0.obs;
    void _increment() {
      _count++;

      //print(_count);
    }

    void _decrement() {
      if (_count <= 0) {
        return null;
      } else {
        _count--;
      }
      //print(_count);
    }

    return Container(
      height: _size.height * 0.65,
      width: _size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(45),
          topLeft: Radius.circular(45),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: _size.width * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFF54748),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                    onPressed: _decrement,
                  ),
                  Obx(
                    () => Text(
                      '$_count',
                      style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add, color: Colors.white),
                    onPressed: _increment,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Text(
                      'X-Tudo',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      'Test Subtitle',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        color: Color(0xFF787993),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'R\$ ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.redAccent,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '00,00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF787993),
              ),
              maxLines: 9,
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: _size.height / 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFF54748),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Adicionar ao Carrinho',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
