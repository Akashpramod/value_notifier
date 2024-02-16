import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 const  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final ValueNotifier<int> _counter = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('value Notifier'),
        backgroundColor: Colors.red
        ,
      ),
      backgroundColor: Colors.red,
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context,value,_) {
                return Text(value.toString());
              }
            ),
          
            ElevatedButton(onPressed: (){
              _counter.value++; 
              print(num);

            }, child: Text('ADD', style: TextStyle(fontSize: 25, fontWeight:FontWeight.bold ),),
            
           
            
            )
          ],
          
        ),
      ),
    );
  }
}