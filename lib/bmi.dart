import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  TextEditingController heightcon = TextEditingController();
  TextEditingController weightcon = TextEditingController();
  String result="";
  void calbmi(){
    double height = double.parse(heightcon.text)/100;
    double weight = double.parse(weightcon.text);
    double bmi = weight/(height*height);
    setState(() {
      result="your bmi is ${bmi.toStringAsFixed(2)}";
    });
  }
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextField(
                          controller: heightcon,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.height),
                            hintText: "Height(cm)",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        TextField(
                          controller: weightcon,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.line_weight),
                            hintText: "weight(kg)",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        GestureDetector(onTap: calbmi,
                          child: Container(
                            height: 30,
                            width: double.infinity,
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
                        ),Text(result)
                      ],
                    ),
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
