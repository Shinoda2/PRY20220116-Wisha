import 'package:flutter/material.dart';
import 'package:pry20220116/screens/login.dart';
import 'package:pry20220116/screens/login_medico.dart';
import 'package:pry20220116/widgets/analisis.dart';

class Option extends StatefulWidget{
  const Option({Key? key}) : super(key: key);

  @override
  _Option createState() =>_Option();

}

class _Option extends State<Option>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const Padding(
                padding: EdgeInsets.only(top: 60, bottom: 60),
                child: Text( "WISHA",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
            ),
            Form(child:
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Login()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.indigoAccent),
                          fixedSize: MaterialStateProperty.all<Size>(Size.fromWidth(250)),
                          foregroundColor: MaterialStateProperty.all(Colors.white ),
                        ),
                        child: const Text("PACIENTE",
                        style: TextStyle(
                          fontSize: 30,
                          ),
                        ),
                    ),
                    const SizedBox(height: 30,),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>Analisis()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
                        fixedSize: MaterialStateProperty.all<Size>(const Size.fromWidth(250)),
                        foregroundColor: MaterialStateProperty.all(Colors.white ),
                      ),
                      child: const Text("MÉDICO",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),

    );
  }

}