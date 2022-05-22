import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:modbus/utils/helpers.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget with Helpers {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:MyHomePage()

    );
  }
}


class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with Helpers {


  build(BuildContext context) {
    return Scaffold(

        body: Scaffold(
          body: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ModBus Server ",style: TextStyle(
                    fontSize: 30,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold
                ),),


                SizedBox(height: 30,),
                Text("Turn On  ",style: TextStyle(
                  fontSize: 20,

                ),
                ),
                SizedBox(height: 30,),
                IconButton(
                    onPressed: () async
                    {
                     await SendData(ip:'10.18.65.73', port:50000,);

                    }, icon: Icon(Icons.lightbulb_outline,color: Colors.yellow,size: 40,)),





                // IconButton(
                //     onPressed: () async
                //     {
                //       await Socket.connect('10.18.65.73', 50000,).then((socket) {
                //         var message = Uint8List(12);
                //         var bytedata = ByteData.view(message.buffer);
                //         bytedata.setUint8(0, 0);
                //         bytedata.setUint8(1, 0);
                //         bytedata.setUint8(2, 0);
                //         bytedata.setUint8(3, 0);
                //         bytedata.setUint8(4, 0);
                //         bytedata.setUint8(5, 6);
                //         bytedata.setUint8(6, 0);
                //         bytedata.setUint8(7, 5);
                //         bytedata.setUint8(8, 0x0C);
                //         bytedata.setUint8(9, 0x30);
                //         bytedata.setUint8(10, 0xFF);
                //         bytedata.setUint8(11, 0x00);
                //         socket.add(message);
                //
                //
                //       });
                //
                //     }, icon: Icon(Icons.lightbulb_outline,color: Colors.yellow,size: 40,)),





              ],
            ),
          ),
        )
    );
  }
}
































