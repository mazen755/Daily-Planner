  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'Home.dart';

void main(){
  runApp(SignUP());
  }
  class SignUP extends StatefulWidget {
    @override
    State<SignUP> createState() => _SignUPState();
  }

  class _SignUPState extends State<SignUP> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
       home:  Scaffold(
        body:
        ListView(

          children: [
            Column(

              children: [

                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100,),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF5E46F1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.check_circle_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Daily Planner',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1A1A),
                  ),
                ),
                Text("Organize your day, achieve your goals"),
                SizedBox(height: 30,),

                Container(

                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 3,color: Colors.white),
                      color: Colors.white),

                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30,),
                      Text("Create Account "),
                      SizedBox(height: 15,),
                      Text("Full Name"),
                      SizedBox(height: 15,),
                      TextField(
                        textCapitalization: TextCapitalization.words,
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          prefixIcon: const Icon(Icons.person_outline, color: Color(0xFF5E46F1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Color(0xFF5E46F1), width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),

                      Text("Email"),
                      SizedBox(height: 15,),
                      TextField(
                        keyboardType: TextInputType.emailAddress, // عشان يظهر زرار الـ @ في الكيبورد
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'example@gmail.com', // نص توضيحي خفيف
                          prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF5E46F1)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          // لون الحدود لما تضغط على الـ TextField
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Color(0xFF5E46F1), width: 2),
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),


                      Text("PassWord"),
                      SizedBox(height: 15,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',


                          prefixIcon: Icon(Icons.lock_outline, color: Color(0xFF5E46F1)),


                          suffixIcon: Icon(Icons.visibility_off_outlined),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),


                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Color(0xFF5E46F1), width: 2),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 10),
                          ElevatedButton(

                            onPressed: () {},

                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(400,1),
                              backgroundColor: const Color(0xFF5E46F1),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 18),

                              shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(21),
                              ),

                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home(),
                                  ),
                                );
                              },
                              child: Text(
                                'Create Account',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?"),
                          TextButton(
                            child:  Text(
                              'Log in ',
                              style: TextStyle(
                                color: Color(0xFF5E46F1),
                                fontSize: 14,
                              ),
                            ),

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        ),
      );
    }
  }