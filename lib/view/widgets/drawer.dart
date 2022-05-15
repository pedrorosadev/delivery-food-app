import 'package:flutter/material.dart';

/*
Este Widget é referente ao Drawer(Barra Lateral) do aplicativo.
This Widget refers to the Drawer (Sidebar) of the application.
*/

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: const Color(0xFF272120),
      child: ListView(
        children: [
          Container(
              height: _size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //Entrará a imagem do perfil do usuário e o nome
                  Icon(Icons.person_outlined, size: 42),
                  Text(
                    'Nome do Usuário',
                    style: TextStyle(fontSize: 21),
                  ),
                ],
              )),
          const ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Início',
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: Text(
              'Buscar',
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            title: Text(
              'Notificações',
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            title: Text(
              'Carrinho',
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            title: Text(
              'Favoritos',
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Minha Conta',
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.headset_mic,
              color: Colors.white,
            ),
            title: Text(
              'Ajuda',
              style: TextStyle(color: Colors.white, fontSize: 21),
            ),
          ),
        ],
      ),
    );
  }
}
