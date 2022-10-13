import 'package:flutter/material.dart';

class  Results extends StatelessWidget {
  final double age;
  final int result;
  final bool gender;
  final double weight;
  final double height;
  Results({
    required this.gender,
    required this.age,
    required this.weight,
    required this.height,
    required this.result
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(backgroundColor: Colors.black,
        title: Text("BMI Results"),),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('gender:${gender?'female':'male'}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                ),),
              Text('age:$age',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                ),),
              Text('weight:$weight',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                ),),
              Text('height:$height',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                ),),
              Text('result:$result',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white
                ),),
            ],
          ),
        ),
      ),

    );
  }
}
