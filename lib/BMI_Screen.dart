import 'package:flutter/material.dart';
import 'package:flutter_task/Home_Screen.dart';

class BmiScreen extends StatefulWidget {
  String gender;
  double result;
  int age;
   BmiScreen(this.gender,this.result,this.age);

  @override
  State<BmiScreen> createState() => _BmiScreenState(gender,result,age);
}
class _BmiScreenState extends State<BmiScreen> {
  String gender;
  double result;
  int age;
  _BmiScreenState(this.gender,this.result,this.age);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff252a48),
          leading:IconButton(onPressed: (){
            setState(() {
              runApp(Home_Screen());
            });
          }, icon:const Icon(Icons.arrow_back_ios_new),iconSize: 30,color: Colors.white,),
          flexibleSpace:Center(
            child: Container(
              padding:const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: const Text("BMI RESULT",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white,),)),
          ),
          centerTitle: true,

        ),
        backgroundColor:Color(0xff0d1232),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 310,
                height:150,
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(color:Color(0xff252a48),borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("Gender:$gender",style: TextStyle(fontWeight:FontWeight.bold,fontSize:30,color: Colors.white),textAlign:TextAlign.center),
              ),
              SizedBox(height:20,),
              Container(
                width: 310,
                height:150,
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(color:Color(0xff252a48),borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("Result:$result",style: TextStyle(fontWeight:FontWeight.bold,fontSize:30,color: Colors.white),textAlign:TextAlign.center),
              ),
              SizedBox(height:20,),
              Container(
                width: 310,
                height:150,
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(color:Color(0xff252a48),borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("Age:$age",style: TextStyle(fontWeight:FontWeight.bold,fontSize:30,color: Colors.white),textAlign:TextAlign.center,),
              ),


          ],),
        ) ,
      ),
    );
  }
}
