import 'package:delivery/view/screens/home_page.dart';
import 'package:delivery/view/screens/structure.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

/*
Esta página é referente ao login / cadastramento no aplicativo, o usuário será
redicionado para esta página após o splashscreen.
This page refers to login / registration in the application, the user will be
redirected to this page after the splashscreen.
*/

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF9EDE4),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                //flex: 1,
                child: Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.burger,
                      color: const Color(0xFFF54749),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Delivery App',
                      style: TextStyle(
                          fontSize: 18,
                          color: const Color(0xFFF54749),
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Seja bem vindo !',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Informe os seus dados de acesso para entrar no aplicativo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF787993),
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hintText: 'E-mail',
                        hintStyle: TextStyle(
                          color: Color(0xFF787993),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDFDFE4),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF787993),
                          ),
                        ),
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(
                          color: Color(0xFF787993),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDFDFE4),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF787993),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          (25),
                        ),
                        color: const Color(0xFFF54749),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.off(const StructurePage());
                        },
                        child: const Text(
                          'Entrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          color: const Color(0xFFF54749),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Ainda não possui uma conta?',
                      style: TextStyle(
                        color: Color(0xFF787993),
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Criar Agora',
                        style: TextStyle(
                          color: Color(0xFFFF7052),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
