import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //time of day variable
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30);

  //show time picker method
  void _showTimePicker(){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()
    ).then((value){
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            //display time
            Text(
              _timeOfDay.format(context).toString(),
              style: const TextStyle(fontSize: 45),),

               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: MaterialButton(
                  color: Colors.blue,
                    onPressed: _showTimePicker,
                    child: const Text("PICK TIME", style: TextStyle(color: Colors.white, fontSize: 30),),
                 ),
               ),

          ],
        ),
      ),
    );
  }
}
