import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:core';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Color.fromRGBO(236, 74, 113 , 1),

    ),
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  int horaI = 00, cHor2=0, horaF=00, tarifaH =0, horasT, minT, cMin =0, tarifaM = 0, minI = 00, minF = 00,p, total=0;
  double cHor = 0,  tiempo=0;

  TimeOfDay _Inicio = new TimeOfDay.now();
  TimeOfDay _Ultimo = new TimeOfDay.now();


  //Hora ENTRADA
  Future<Null> _seleccionaHoraEntrada(BuildContext inicio) async {
    final TimeOfDay tomaEntrada = await showTimePicker(
        context: inicio,
        initialTime: _Inicio);

    if(tomaEntrada != null && tomaEntrada != _Inicio){

      setState(() {

        _Inicio = tomaEntrada;
        horaI = tomaEntrada.hour;
        minI = tomaEntrada.minute;

        });
    }
  }

//HORA DE SALLIDA
    Future<Null> _seleccionaHoraFinal(BuildContext ultima) async{
      final TimeOfDay tomaUltimo = await showTimePicker(
          context: ultima,
          initialTime: _Ultimo);

      if(tomaUltimo != null && tomaUltimo != _Ultimo){

        setState(() {

          _Ultimo = tomaUltimo;
          horaF = tomaUltimo.hour;
          minF = tomaUltimo.minute;

        });
      }


  }

void calcularTotal(){

   if(tarifaH != 0 && tarifaM != 0){

      horasT = horaF - horaI;
      minT = minF-minI;
      //minutos
      cMin = (minT+(horasT*60))%60;

      //Horas
      p = (minT+(horasT*60));

      cHor = p/60;

      cHor2= cHor.toInt();

      //TOTAL
      if(cMin<15){
        total = cHor2*tarifaH;
      }if(cMin>=15){
        total = (cHor2*tarifaH)+(tarifaM);
      }if(cMin>=30){
        total = (cHor2*tarifaH)+(tarifaM*2);
      }if(cMin>=45){
        total = (cHor2*tarifaH)+(tarifaM*3);
      }



    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Estacionamiento'),
      ),
      body: new Container(

        padding: new EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            new Column(
              children: <Widget>[
//Tarifa
                TextField(

                  decoration: InputDecoration(

                      icon: Icon(Icons.assignment),
                      labelText: 'Tarifa',
                      hintText: 'El valor de la tarifa por hora',
                      helperText: 'Este es el coste por hora ♥\n\n',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)


                      )
                  ),


                  onChanged: (cambio){ //variable que guarda
                    print('cambio');

                    setState(() {

                    tarifaH = int.parse(cambio);

                    });

                  },
                ),

                TextField(

                  decoration: InputDecoration(

                      icon: Icon(Icons.assignment),
                      labelText: 'Tarifa después de 15 minutos',
                      hintText: 'El valor de la tarifa extra',
                      helperText: 'Este es el coste extra por cada 15 minutos que pasan♥\n\n',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),

                  ),


                  onChanged: (cambio){ //variable que guarda
                    print('cambio');

                    setState(() {
                      tarifaM = int.parse(cambio);
                    });

                  },
                ),


//botones
                Center(
                    child: Column(

                      children: <Widget>[
                        //BOTON !
                        new RaisedButton(
                          color: Color.fromRGBO(172, 74, 236, 1.0),
                          onPressed: (){
                            _seleccionaHoraEntrada(context);
                          },

                          textColor: Colors.white,
                          child:
                            Container(
                              child:
                                Text('Seleccionar Hora de Entrada',
                                 ),
                              ),
                            ),
                        //BOTON 2
                        new RaisedButton(
                          color: Color.fromRGBO(172, 74, 236 , 1.0),
                            onPressed: () {
                              _seleccionaHoraFinal(context);
                            },
                          textColor: Colors.white,
                          child:
                          Container(
                            child:
                            new Text('Seleccionar Hora de Salida'),
                            ),
                          ),

                      ],
                    ),
                  ),

//Confirmar valores
                Center(

                  child: Column(

                    children: <Widget>[

                      new Text('Hora de Entrada: $horaI:$minI\n\n'),
                      new Text('Hora de Salida: $horaF:$minF\n'),
                      new Text('Total: $total'),
                      Text('\nTiempo transcurrido: $cHor2:$cMin '),

                    ],
                  ),
                ),
                RaisedButton(
                  color: Color.fromRGBO(172, 74, 236 , 1.0),
                  child: new Text('Cobrar',
                      style:
                      TextStyle(fontSize: 15, color: Colors.white)),
                  onPressed: () {
                    setState(() {
                                  calcularTotal();
                    }
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}