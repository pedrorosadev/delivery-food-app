import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({Key? key, required this.image, required this.text})
      : super(key: key);

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.10,
          width: size.width * 0.25,
          child: InkWell(
            autofocus: true,
            splashColor: Colors.amber,
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              print('Clicou');
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    image,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
        ),
      ],
    );
  }
}
