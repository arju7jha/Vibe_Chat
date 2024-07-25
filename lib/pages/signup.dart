import 'package:flutter/material.dart';
import 'package:vibe_chat_app/pages/home.dart';
import 'package:vibe_chat_app/pages/signin.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF7f30fc), Color(0xFF6380fb)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 105.0))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Create new Account",
                        style: TextStyle(
                            color: Color(0xFFbbb0ff),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                          height: MediaQuery.of(context).size.height / 1.5,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Your Name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0, color: Colors.black38)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.text_fields,
                                        color: Color(0xFF7f30fc),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0, color: Colors.black38)),
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.mail_outline,
                                        color: Color(0xFF7f30fc),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Password",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0, color: Colors.black38)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.password,
                                      color: Color(0xFF7f30fc),
                                    ),
                                  ),
                                  obscureText: true,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Conform Password",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.0, color: Colors.black38)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.password,
                                      color: Color(0xFF7f30fc),
                                    ),
                                  ),
                                  obscureText: true,
                                ),
                              ),
                              SizedBox(height: 60,),
                              // Row(mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Text(
                              //       "Already have an account - ",
                              //       style: TextStyle(color: Colors.black, fontSize: 16.0),
                              //     ),
                              //     Text(
                              //       "SingIn now!",
                              //       style: TextStyle(color: Color(0xFF7f30fc), fontSize: 16.0, fontWeight: FontWeight.w500),
                              //     ),
                              //   ],
                              // ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account - ",
                                style: TextStyle(color: Colors.black, fontSize: 16.0),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigate to the sign-in page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignIn()),
                                  );
                                },
                                child: Text(
                                  "SignIn now!",
                                  style: TextStyle(
                                    color: Color(0xFF7f30fc),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(

                      child: GestureDetector(
                        onTap: () {
                          // Navigate to the home page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Container(

                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          width: MediaQuery.of(context).size.width,
                          child: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(10),
                            child: Center(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xFF6380fb),
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

