import 'package:flutter/material.dart';

void main() => runApp(Vista());

class Vista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.purple,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Inicio'),
              leading: Image.asset('img/perfil.png', )
            ),
            body:

            ListView(

              children: [


                //Primera publicación
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                    child:
                                      ListTile(
                                        leading:

                                          Image.asset('img/imagen3.png', width: 35, height: 35),

                                          title:

                                              Text(
                                                    'Aeroméxico ''@Aeromexico\n',
                                              ),
                                      //trailing: Icon(Icons.assignment_turned_in),
                                        subtitle:
                                              Text(
                                                  '¿Quieres ir al Tecate Live Out el 19 de octubre?\n'
                                                  '¡Este es el momento ideal para comprar tu boleto a Monterrey!\n'
                                                  'Conoce cómo con #LaMúsicaTeHaceVolar, Aeroméxico Música te regala la entrada al festival: https://viaja.am/30WvyKF'
                                              ),
                                        isThreeLine: true,

                                            ),

                                    height: 130,


                                    //Image.asset('img/imagen3.png', width: 35, height: 35),




                            ),
                          ),
                          Center(
                            child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child:
                                          Icon(Icons.chat_bubble)
                                      ),
                                      Expanded(
                                      child:
                                          Icon(Icons.forward_5)
                                      ),
                                      Expanded(
                                      child:
                                          Icon(Icons.favorite_border)
                                      ),
                                      Expanded(
                                      child:
                                          Icon(Icons.share)
                                      ),

                                    ],
                                  ),
                          ),
                //Segunda publicación
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child:
                              ListTile(
                                leading:

                                Image.asset('img/Netflix.png', width: 35, height: 35),

                                title:

                                Text(
                                  'Netflix Latinoamérica ''@NetflixLAT\n',
                                ),
                                //trailing: Icon(Icons.assignment_turned_in),
                                subtitle:
                                Text(
                                    '– ¡Oiga, vecino! No haga ruido tan temprano, ayer me dormí muy tarde viendo series. 😑'
                                    '\n– Es la 1 pm. 🤨'
                                    '\n– Yo decido qué es temprano. 😌'
                                ),
                                isThreeLine: true,

                              ),

                              height: 100,


                              //Image.asset('img/imagen3.png', width: 35, height: 35),




                            ),
                          ),
                          Center(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child:
                                    Icon(Icons.chat_bubble)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.forward_5)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.favorite_border)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.share)
                                ),

                              ],
                            ),
                          ),
                //Tercera publicación
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child:
                              ListTile(
                                leading:

                                Image.asset('img/Laza.png', width: 35, height: 35),

                                title:

                                Text(
                                  'Lázaro 🎃 @LazaPLAYS\n',
                                ),
                                //trailing: Icon(Icons.assignment_turned_in),
                                subtitle:
                                Text(
                                    '"Mientras dure la guerra" tiene una fotografía preciosa, los actores hacen un trabajo increíble, '
                                    'está rodada con mucho cariño y, a pesar de inexactitudes históricas, '
                                    'creo que es bastante relevante en la actualidad y casi un siglo después '
                                    'de la época en la que está basada.'
                                ),
                                isThreeLine: true,

                              ),

                              height: 130,
                            ),
                          ),
                          Center(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child:
                                    Icon(Icons.chat_bubble)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.forward_5)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.favorite_border)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.share)
                                ),

                              ],
                            ),
                          ),
                //Cuarta publicación
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child:
                              ListTile(
                                leading:

                                Image.asset('img/3rperfil.png', width: 35, height: 35),

                                title:

                                Text(
                                  'Jerry @Jerrypleasure\n',
                                ),
                                //trailing: Icon(Icons.assignment_turned_in),
                                subtitle:
                                Text(
                                        'me texting back almost instantly while i waited nearly 5 hours for a response:\n'
                                        '\n🤡🤡🤡🤡🤡🤡🤡'
                                        '\n🤡🤡🤡🤡🤡🤡🤡'
                                        '\n🤡🤡'
                                        '\n🤡🤡'
                                        '\n🤡🤡                           LOWN'
                                        '\n🤡🤡'
                                        '\n🤡🤡'
                                        '\n🤡🤡🤡🤡🤡🤡🤡'
                                        '\n🤡🤡🤡🤡🤡🤡🤡'
                                ),
                                isThreeLine: true,

                              ),

                              height: 200,
                            ),
                          ),
                          Center(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child:
                                    Icon(Icons.chat_bubble)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.forward_5)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.favorite_border)
                                ),
                                Expanded(
                                    child:
                                    Icon(Icons.share)
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),


              ],


            )

        )
    );
  }

}