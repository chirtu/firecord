// Copyright (c) <2022> <Fatuma chitu, chitufatuma45@gmail.com>

import 'package:firecord/welcome/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40)),
                  color: kprimarycolor,
                ),
              ),
              Card(
                elevation: 9,
                shadowColor: kblack,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                  ),
                  height: 400,
                  width:350,
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/lo.jpg")),
                      SizedBox(height: 6,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,),
                        child: Container(
                          height: 45,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft:  Radius.circular(10),bottomRight: Radius.circular(10) ),
                              color: kwhite,
                              border: Border.all(color: kgrey)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(" Username",style:TextStyle(color: kprimarycolor),),
                              Icon(Icons.person_outline,color: kprimarycolor,)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20,top: 6),
                        child: Container(
                          height: 45,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),bottomLeft:  Radius.circular(10),bottomRight: Radius.circular(10) ),
                              color: kwhite,
                              border: Border.all(color: kgrey)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("  Password",style:TextStyle(color: kprimarycolor),),
                              Icon(Icons.remove_red_eye,color: kprimarycolor,)
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: kprimarycolor,
                        ),
                        child: MaterialButton(
                          onPressed: null,
                          child: Text(" LOGIN",style: TextStyle(color: kwhite),),),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0,right: 80,top: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.house_sharp,size: 30,color: kprimarycolor,),
                    Text("New User ? ",style: TextStyle(color: kprimarycolor,fontSize: 16),),
                    InkWell(child: Text("Sign Up"),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                      },)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
