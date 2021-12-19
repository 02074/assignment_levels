import 'package:flutter/material.dart';
import 'package:levels/create.dart';

class Location extends StatelessWidget {
  const Location({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WELCOME"),
      ),
        body: ListView( 
        
          children:   const [
            LevelsWidget(),
            LevelsWidget(),
            LevelsWidget(),
            LevelsWidget(),
            LevelsWidget(),
            LevelsWidget(),
            LevelsWidget(),
            LevelsWidget(),
            LevelsWidget(),
            LevelsWidget(),
           
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
             return const Create();
            })
            );
          },
          
          ),
      
    );
  }
}

class LevelsWidget extends StatelessWidget {
  const LevelsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card( 
      elevation: 15,
    child: ListTile(
      
        leading:  const Icon(Icons.check_circle),
        title:  const Text("plan to do my assignment"),
        subtitle:  const Text("will be doing my assignment at duapa today"),
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.up,
          children: const [
            Icon(Icons.circle_notifications),
            Text("yesterday")
          ],
        ),
      ),
      
      ),
    
    );
  }
}