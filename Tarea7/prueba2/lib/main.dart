import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final bd=Firestore.instance;

void main() => runApp(Nub());

class Nub extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WhatsApp();
  }

}
class WhatsApp extends State{
  final txtMensaje = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          ),

      home:
      Scaffold(
        appBar: AppBar(

          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('Imagenes/3.jpg', fit: BoxFit.cover,height: 40 ,),
              Container(padding: const EdgeInsets.all(8.0), child: Text('Lira'),

              )
            ],
          ),

          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.phone),
            ),
            IconButton(
              icon: Icon(Icons.category),
            ),
          ],
        ),
        body:
        //Agraga los datos de la aplicacion
        StreamBuilder(
          stream: Firestore.instance.collection('usuario').snapshots(),
          builder: (context, snap){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Flexible(
                  child:
                  ListView.builder(
                    padding: EdgeInsets.all(10),
                    itemBuilder: (context,index){
                      return retorna(index,snap.data.documents[index]);
                    },
                    itemCount: snap.data.documents.length,
                  ),
                ),
                Card(
                  color: Color.fromRGBO(236, 65, 145 , 50),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child:
                          Icon(Icons.camera_enhance),
                        ),
                        Expanded(
                          child:
                          Icon(Icons.gif),
                        ),
                        Expanded(
                          child:
                          Icon(Icons.text_fields),
                        ),
                        Expanded(
                          child:
                          Icon(Icons.image),
                        ),
                        Expanded(
                          child:
                          Icon(Icons.attach_file),
                        ),
                        Expanded(
                          child:
                          IconButton(
                            icon: Icon(Icons.send),
                            onPressed: (){
                              colocar(txtMensaje.text);
                              txtMensaje.text = '';
                            },
                          ),
                        )
                      ],
                    )
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child:
                      TextField(
                        decoration: InputDecoration(
                            labelText: '¡Escribe aqui',
                            hintText: ' ',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5)

                            )
                        ),
                        controller:  txtMensaje,
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

//MEtodo que llama a la funcion
void colocar(String sms) async{
  await bd.collection("usuario").add({'mensaje':sms});
}
//Metodo que coloca la funcion
Widget retorna (int index ,DocumentSnapshot nubecita){
  return Card(
    margin: EdgeInsets.all(5.00),
    elevation: 10.0,
    child: ListTile(
      leading: Image.asset('Imagenes/3.jpg', width: 35,),
      title: Text('Lira', style: TextStyle(fontSize: 15.00, color: Color.fromRGBO(248, 160, 201 , 100)),textAlign: TextAlign.center,),
      subtitle:  Container(
        margin:const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration:BoxDecoration(color: Color.fromRGBO(255, 255, 255, 2), borderRadius: BorderRadius.circular(10)),
          child:
          Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(
                    right: 5, left: 5, top: 5, bottom: 2.0),
                child:
                Text(nubecita.data['mensaje'],style: TextStyle(fontSize: 20, color: Color.fromRGBO(76, 7, 75, 5)),),
              )
            ],
          ),
        ),
      ),
    ),
  );
}


