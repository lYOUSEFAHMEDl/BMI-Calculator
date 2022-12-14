import 'package:flutter/material.dart';
class BMIResult extends StatelessWidget{

  final Bmi;
  final weight;
  final Height;
  final bool isMale;

  BMIResult({
    required this.weight,
    required this.Height,
    required this.isMale,
    required this.Bmi,

});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff0B0B3F),
      appBar: AppBar(
        backgroundColor: Color(0xff6E007D),
        title: Text(
          'BMI Result',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xff6E007D),
            borderRadius: BorderRadius.circular(10),
          ),
          width:300,
          height: 300,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender: ${isMale? 'Male': 'Female'}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(
                'Height:$Height',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Weight:$weight',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'BMI: $Bmi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
