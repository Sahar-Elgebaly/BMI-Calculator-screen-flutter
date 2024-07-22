

import 'package:flutter/material.dart';
import 'package:flutter_task/BMI_Screen.dart';

class Home_Screen extends StatefulWidget {
 const  Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  bool isMale=true;
  int weight=90;
  int heightCm=185;
  int age=22;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        padding: EdgeInsets.all(5),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:const Color(0xff0d1232),
            title:const Text("BMI CALCULATOR",
              style: TextStyle(fontWeight:FontWeight.w900,color: Colors.white,fontSize:30),
            ),
          ),
          backgroundColor:Color(0xff0d1232),
          body:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
        
              //gender Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Container(
                      width:180,
                      height:180,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: isMale?Colors.lightBlue:Color(0xff252a48), ),
                      child: const Column(
                        children: [
                          Image(image:AssetImage('images/male-gender.png'),width:80,height: 80,color:Colors.white,),
                          SizedBox(height:10,),
                          Text("MALE",style: TextStyle(fontSize:25,fontWeight:FontWeight.bold,color:Colors.white),),
                        ],
                      ),
        
                    ),
                    onTap:(){
                      setState(() {
                        bool before=true;
                       isMale=isMale?false:true;
                       if(before!=isMale){
                         isMale=true;
                       }
                      });
                    },
                  ),
        
                  GestureDetector(
                    child: Container(
                      width:180,
                      height:180,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(20),
                      decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: isMale? Color(0xff252a48):Colors.lightBlue, ),
                      child: const Column(
                        children: [
                          Image(image:AssetImage('images/femenine.png'),width:80,height: 80,color:Colors.white,),
                          SizedBox(height:10,),
                          Text("FEMALE",style: TextStyle(fontSize:25,fontWeight:FontWeight.bold,color:Colors.white),),
                        ],
                      ),
                    ),
                    onTap:(){
                      setState(() {
                        bool before=true;
                       isMale=isMale?false:true;
                       if(before==isMale){
                         isMale=false;
                       }
                      });
                    },
                  ),
        
                ],
              ),
        
              // height slider
              Container(
                width:double.infinity,
                height:210,
                margin: const EdgeInsets.all(10),
                padding:const EdgeInsets.all(10),
                decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                  color:Color(0xff252a48), ),
                child: Column(
                  children: [
                    Text("HEIGHT",style: TextStyle(fontSize:27,fontWeight:FontWeight.w700,color:Colors.white),),
                    SizedBox(height:20,),
                    Text("${heightCm}cm",style: TextStyle(fontSize:40,fontWeight:FontWeight.w900,color:Colors.white),),
                    SizedBox(height:20,),
                    Slider(min:145,max: 200,value:heightCm.toDouble(),onChanged:(Value){
                      heightCm=Value.toInt();
                      setState(() {});
                    },activeColor:Colors.red[900],inactiveColor:Colors.grey,)
                  ],
        
                ),
              ),

              //weight and age
              Row(children: [
                //weight container
                Container(
                  width:180,
                  height:210,
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                    color:Color(0xff252a48), ),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  child:  Column(children: [
                   const Text("WEIGHT",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color:Colors.white),),
                   const SizedBox(height:15,),
                    Text( "$weight" ,style:const TextStyle(fontSize:40,fontWeight:FontWeight.bold,color:Colors.white),),
                   const SizedBox(height:10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),
                          color:Color(0xff0d1232), ),
                        child: IconButton(
                          onPressed:(){
                            if(weight<150&&weight>=35) {
                            weight++;}
                          setState(() {
                          });
                        },icon:const Icon(Icons.add),iconSize:30,color:Colors.white ,),
                      ),
                     const SizedBox(width:15,),
                      Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),
                          color:Color(0xff0d1232), ),
        
                        child: IconButton(onPressed: (){
                          setState(() {
                            if(weight<=150&&weight>35) {
                              weight--;
                            }});
                        }, icon:const Icon(Icons.remove),iconSize:30,color:Colors.white ,),
                      )
        
                    ],)
        
                  ],),
                ),
        
                //age container
                Container(
                  width:180,
                  height:210,
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                    color:Color(0xff252a48), ),
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  child:  Column(children: [
                    const Text("AGE",style: TextStyle(fontSize:30,fontWeight:FontWeight.bold,color:Colors.white),),
                    const SizedBox(height:15,),
                    Text( "$age" ,style:const TextStyle(fontSize:40,fontWeight:FontWeight.bold,color:Colors.white),),
                    const SizedBox(height:10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),
                          color:Color(0xff0d1232), ),
                        child: IconButton(
                          onPressed:(){
                            setState(() {
                              if (age < 90 && age >=18) {
                                age++;
                              }});
                          },icon:const Icon(Icons.add),iconSize:30,color:Colors.white ,),
                      ),
                      const SizedBox(width:15,),
                      Container(
                        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),
                          color:Color(0xff0d1232), ),
        
                        child: IconButton(onPressed: (){
                          setState(() {
                            if (age <=90 && age > 18) {
                              age--;
                            } });
        
                        }, icon:const Icon(Icons.remove),iconSize:30,color:Colors.white ,),
                      )
        
                    ],)
        
                  ],),
                ),
        
              ],),
        
              //GO TO BMI_screen
              GestureDetector(
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration:  BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                    color:Colors.red[900], ),
                  padding: EdgeInsets.fromLTRB(100,15,100,15),
                  margin: EdgeInsets.all(10),
                  child: Center(child: Text("Check Your BMI",style: TextStyle(fontSize:24,fontWeight:FontWeight.w900,color:Colors.white,),)),
                ),
                onTap: (){
                  setState(() {
                    double bmi=(weight/((heightCm/100)*heightCm/100));
                    String gender=isMale?"Male":"Female";
                   runApp(BmiScreen(gender,bmi,age));
        
                  });
                },
              ),
            ],),
        ),
      ),
    );
  }
}
