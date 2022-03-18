import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
                tipCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget tipCard (){
    return const Card(
      child: ListTile(
        leading: Icon(Icons.person,color: Colors.blue,),
        title: Text('Titulo de la tarjeta'),
        subtitle: Text('Hola mundo'),
      )
    );
  }
}
