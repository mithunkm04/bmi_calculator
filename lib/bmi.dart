import 'package:flutter/material.dart';

class Bmi extends StatelessWidget {
  const Bmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: AlignmentGeometry.topCenter,
            colors: [Colors.black, Colors.blue],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 70),
              Text(
                "BMI CALCULATOR",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(height: 60),
              SizedBox(
                height: 250,
                width: 230,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.height),
                          hintText: "Height(cm)",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4))
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.line_weight),
                          hintText: "weight(kg)",
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width:double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: AlignmentGeometry.topCenter,
                            colors: [Colors.blue, Colors.black],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Calculate",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
