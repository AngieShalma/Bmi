import 'package:bmi/results.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';




class bmi extends StatefulWidget {
  @override
  State<bmi> createState() => _MyAppState();
}  double sliderValue=100;
double weight=60;
double height=150;
double age=22;
bool gender =true;
class _MyAppState extends State<bmi> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("BMI Calculator"),
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: gender == true ? Colors.red : Colors.black,
                              width: 10,

                            ),
                          ),
                          child: Expanded(
                            child: GestureDetector(
                              child: Icon(Icons.woman,
                                size: 120,),
                              onTap: () {
                                gender = true;
                                setState(() {

                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: gender == false ? Colors.red : Colors
                                  .black,
                              width: 10,

                            ),
                          ),
                          child: Expanded(
                            child: GestureDetector(
                              onTap: () {
                                gender = false;
                                setState(() {

                                });
                              },
                              child: Icon(Icons.man, size: 120),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('HEIGHT',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('${sliderValue}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,

                                  ),),
                                Text('cm',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20
                                  ),),

                              ],
                            ),
                            Slider(
                                value: sliderValue,
                                min: 100,
                                max: 220,
                                divisions: 120,
                                activeColor: Colors.red,
                                onChanged: (value) {
                                  setState(() {
                                    sliderValue = value;
                                  });
                                }),

                          ],

                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 120,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black,
                                ),
                                child: Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                      Text('WEIGHT', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 27,
                                      ),),
                                      Text('${weight}', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 30
                                      ),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          IconButton(onPressed: () {
                                            if (weight > 50) {
                                              weight--;
                                              setState(() {

                                              });
                                            }
                                          },
                                              icon: Icon(Icons.arrow_back_ios,
                                                color: Colors.white,)
                                          ),
                                          IconButton(onPressed: () {
                                            if (weight < 100) {
                                              weight++;
                                              setState(() {

                                              });
                                            }
                                          },
                                              icon: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,)
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Container(
                                height: 120,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.black,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('AGE', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 27
                                    ),),
                                    Text('${age}', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 30
                                    ),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      children: [
                                        IconButton(onPressed: () {
                                          if (age > 19) {
                                            age--;
                                            setState(() {

                                            });
                                          }
                                        },
                                            icon: Icon(Icons.arrow_back_ios,
                                              color: Colors.white,)
                                        ),
                                        IconButton(onPressed: () {
                                          if (age < 100) {
                                            age++;
                                            setState(() {

                                            });
                                          }
                                        },
                                            icon: Icon(Icons.arrow_forward_ios,
                                              color: Colors.white,)
                                        ),
                                      ],
                                    ),

                                  ],

                                ),

                              ),

                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(7.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red
                  ),
                  child: MaterialButton(onPressed: () {
                    double result = weight / ((height / 100) * (height / 100));
                    print(result);
                    if (gender != null) {
                      Navigator.push(context, MaterialPageRoute(builder: (
                          context) {
                        return Results(
                            gender: gender,
                            age: age,
                            weight: weight,
                            height: sliderValue,
                            result: result.round());
                      }));
                    }
                  },
                      child: Text('CALCULATOR', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        wordSpacing: 2,
                        color: Colors.white,
                      ),)),
                ),
              ),


            ],
          ),
        ),
      ),

    );
  }}