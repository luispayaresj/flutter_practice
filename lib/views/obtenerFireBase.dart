
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../Entities/registros.dart';
import '../domain/firebase_conection.dart';

class GetFireBase extends StatefulWidget {
  const GetFireBase({Key? key}) : super(key: key);

  @override
  State<GetFireBase> createState() => _GetFireBaseState();
}

class _GetFireBaseState extends State<GetFireBase> {

  final connection = FirebaseConnection();
  List<Registros> registros = [];


  @override
  Widget build(BuildContext context) {
  getAllRegisters();
  return  Scaffold(
  body: ListView.builder(
      itemCount: registros.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,index){
        return ListTile(
          
          leading:CircleAvatar(backgroundImage: Image.network(registros[index].image!).image) ,
          title:Text(registros[index].nombre!),
          onTap: () => showDialog<String>(
            barrierColor: Colors.lightBlue,
            context:context,
            builder:(BuildContext context) => AlertDialog(
              backgroundColor: Colors.grey,
              
              content:Column(
                children: [
                  Image(image:Image.network(registros[index].image!).image),
                  //Text('${registros[index].servicio.toString()}\n\n${registros[index].carro}'),
                  const Text(''),
                  const Text('Datos de Usuario', style: TextStyle(fontWeight: FontWeight.bold) ),
                  
                  Text('Nombre y Apellidos : ${registros[index].nombre} ${registros[index].apellido}'),
                  
                  Text('Telefono :${registros[index].cel}'),
                  Text('Licencia : ${registros[index].licencia}'),

                  const Text(''),
                  const Text('Servicios', style: TextStyle(fontWeight: FontWeight.bold) ),
                  
                  Text('Lavado : ${registros[index].servicio?.lavado}'),
                  Text('Pulido : ${registros[index].servicio?.polish}'),
                  Text('Tapiceria :${registros[index].servicio?.tapiceria}'),

                  const Text(''),
                  const Text('Carro', style: TextStyle(fontWeight: FontWeight.bold) ),
                  
                  Text('Marco : ${registros[index].carro?.marca}'),
                  Text('Modelo : ${registros[index].carro?.modelo}'),
                  Text('Color :${registros[index].carro?.color}'),
                  Text('Placa :${registros[index].carro?.placa}'),
                  ]
                )
            )
          ));
        
      }
    
  )
  );
  }
  
  void getAllRegisters() async {
    final response = await connection.getAllRegistros();
    setState(() {
      registros = response.registros!;
    });
  }
}

