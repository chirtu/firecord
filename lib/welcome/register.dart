// Copyright (c) <2022> <Fatuma chitu, chitufatuma45@gmail.com>

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

enum RegItem{
  driver,client
}
class _RegisterState extends State<Register> {

    RegItem _regItem = RegItem.driver;
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
                  height: 550,
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
                              Text("  Enter Fullname",style:TextStyle(color: kprimarycolor),),
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
                              Text("  Enter Email",style:TextStyle(color: kprimarycolor),),
                              Icon(Icons.mail_outline_outlined,color: kprimarycolor,)
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
                              Text("  Enter Phone",style:TextStyle(color: kprimarycolor),),
                              Icon(Icons.smartphone_outlined,color: kprimarycolor,)
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
                     Row(
                       children: [
                         Radio(
                            activeColor: kprimarycolor,
                           materialTapTargetSize: MaterialTapTargetSize.padded,
                           groupValue: _regItem,
                            value: RegItem.driver,
                           splashRadius: 90.0,
                           onChanged: (RegItem? value){
                              setState(() {
                                _regItem = value!;
                              });
                            },
                          ),
                         const Text('Driver'),
                         SizedBox(width: 10,),
                         Radio(
                           activeColor: kprimarycolor,
                           groupValue: _regItem,
                            splashRadius: 90.0,
                            materialTapTargetSize: MaterialTapTargetSize.padded,
                            value: RegItem.client,
                            onChanged: (RegItem? value){
                              setState(() {
                                _regItem = value!;
                              });
                            },

                          ),
                         const Text('Client'),

                       ],
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
                       child: Text(" SIGN UP",style: TextStyle(color: kwhite),),
                     ),
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
                    Text("have an account ? ",style: TextStyle(color: kprimarycolor,fontSize: 16),),
                    InkWell(
                      child: Text("Sign In"),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                      },
                    )
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
