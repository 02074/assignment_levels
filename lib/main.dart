import 'package:flutter/material.dart';
import 'package:levels/homeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:  const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
   const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login page"),
       centerTitle: false,
       
        
        
      ),
      body: ListView(
        children:  [
           const SizedBox(height: 150,width: 150,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1639586207335-45f5e3e01b30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),),
            )),
            TextFormField(
              decoration: const InputDecoration(label: Text("name")) ,
              
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("location")),
              
              
            ),
            const SizedBox(height: 20,),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> const Location()));
              }, child: const Text("login", style: TextStyle(color: Colors.white),),
              style: TextButton.styleFrom(backgroundColor: Colors.blue)
              
             ,),
           Column(
             children: [
               
               TextFormField(
                  decoration: const InputDecoration(label: Text("create",style: TextStyle(color: Colors.blue),)),
                  
               ),
             ],
           ),
           ]
            
          
        
      ),
    
      
    );
  }
}
