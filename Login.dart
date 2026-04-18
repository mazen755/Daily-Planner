import 'package:flutter/material.dart';
import 'Home.dart';
import 'signup.dart';
void main(){
  runApp(Login());
}
class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:ListView(

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
                      Text("Welcome Back"),
                      SizedBox(height: 15,),
                      Text("Email"),
                      SizedBox(height: 15,),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'example@gmail.com',
                          prefixIcon: const Icon(Icons.email_outlined, color: Color(0xFF5E46F1)),
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
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child:  Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  color: Color(0xFF5E46F1),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10),
                          ElevatedButton(

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            },

                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(400,1),
                              backgroundColor: const Color(0xFF5E46F1),
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 18),

                              shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(21),
                              ),

                            ),
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUP(),
                                ),
                              );
                            },
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                color: Color(0xFF5E46F1),
                                fontSize: 14,
                              ),
                            ),
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
