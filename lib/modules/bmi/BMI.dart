import 'dart:math';
import 'package:flutter/material.dart';
import '../bmi_reuslt/BMIRESULT.dart';

  class BMIPage extends StatefulWidget {
  @override
  _BMIPageState createState() => _BMIPageState();
}
class _BMIPageState extends State<BMIPage> {

  bool isMale = true;
  double height = 120;
  int age = 20;
  int weight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Color(0xff0B0B3F),
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            fontSize:28,
          ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                  setState(() {
                  isMale = true;
                    });
                    },
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Icon(Icons.male,
                           size: 70,
                           color: Colors.white,
                         ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Male',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white
                          ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: isMale? Color(0xffDC1B90) :Color(0xff6E007D),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female,
                            size: 70,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Female',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: !isMale? Color(0xffDC1B90) :Color(0xff6E007D),
                      ),
                    ),
                  ),
                ),
              ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Text('Height',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text('${height.round()}',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight:FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Cm',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Slider(value: height,

                    max:220 ,
                    min: 80,
                    activeColor: Colors.blueAccent,
                    onChanged: (value)
                    {
                      setState(() {
                        height = value;
                      });
                    print(value.round());
                    }
                    )

    ],
          ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Color(0xff6E007D),
                ),
              ),
            )

            ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('${age.round()}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,

                                color: Colors.white
                            ),
                          ),
                          Padding(
                            padding: const  EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age--;
                                    print(age);
                                  });
                                },

                                mini: true,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                      Icons.remove,
                                    color: Colors.white,

                                  ),


                                ),
                                SizedBox(
                                  width:20,
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                    print(age);
                                  });
                                },
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,

                                  ),

                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: Color(0xff6E007D),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('${weight.round()}',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,

                                color: Colors.white
                            ),
                          ),
                          Padding(
                            padding: const  EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              children: [
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight--;
                                    print(weight);
                                  });
                                },
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,

                                  ),

                                ),
                                SizedBox(
                                  width:20,
                                ),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight++;
                                    print(weight);
                                  });
                                },
                                  mini: true,
                                  backgroundColor: Colors.black,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,

                                  ),

                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
                        color: Color(0xff6E007D),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xff6E007D),
            child: MaterialButton(
              color: Color(0xff6E007D),
              height: 50,
              onPressed: (){
                double result = weight / pow(height/100,2);
                print(result.round());
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=> BMIResult(
                            weight: weight.round(),
                            Height: height.round(),
                            isMale: isMale,
                            Bmi: result.round()
                        ),
                    ),
                );
              },
            child: Text(
              'Calculate',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),
            ),
            ),
          )
        ],
      ),
    );
  }
}
 