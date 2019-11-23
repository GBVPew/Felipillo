import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

main()=> runApp(Controles());

class Controles extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return Estado();
  }
}

class Estado extends State{
  double x,y,z;

  AccelerometerEvent acelerometro;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pink[900],
        fontFamily: 'Arial',
      ),
      home: Scaffold(
          appBar: AppBar(
            title: new Text('Cambio de Imagen',textAlign: TextAlign.center,style: TextStyle(fontSize: 15.00,color: Colors.black),),

          ),
          body:
          Container(
            child:
            Image.asset(CambiarImagen(), width: 600, alignment:AlignmentDirectional(100, 40),),
          )
      ),

    );
  }

  @override
  void initState(){
    super.initState();
    accelerometerEvents.listen(
            (AccelerometerEvent event){
          setState(() {
            acelerometro = event;

            x = event.x.round().toDouble();
            y = event.y.round().toDouble();
            z = event.z.round().toDouble();


          }
          );
        });
  }
  String CambiarImagen(){

    if(x >= 1){
      return 'Fotos/1.jpg';
    }

    if(y == 1){
      return 'Fotos/2.jpg';
    }

    if(x <= 1){
      return 'Fotos/3.jpg';
    }
  }
}