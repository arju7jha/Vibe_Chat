import 'package:flutter/material.dart';
import 'package:vibe_chat_app/pages/home.dart';
import 'package:vibe_chat_app/pages/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                        "SignIn",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Login to your account",
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
                          height: MediaQuery.of(context).size.height / 2.0,
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
                              Container(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )),
                              SizedBox(
                                height: 50,
                              ),
                              // Center(
                              //   child: Container(
                              //     width: 130,
                              //     child: Material(
                              //       elevation: 5.0,
                              //       borderRadius: BorderRadius.circular(10),
                              //       child: Center(
                              //         child: Container(
                              //           padding: EdgeInsets.all(10),
                              //           decoration: BoxDecoration(
                              //               color: Color(0xFF6380fb),
                              //               borderRadius:
                              //                   BorderRadius.circular(10)),
                              //           child: Center(
                              //               child: Text(
                              //             "SignIn",
                              //             style: TextStyle(
                              //                 color: Colors.white,
                              //                 fontSize: 18,
                              //                 fontWeight: FontWeight.bold),
                              //           )),
                              //         ),
                              //       ),
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
                                width: 130,
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Center(
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF6380fb),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "SignIn",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40,),
                    // Row(mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       "Don't have an account?",
                    //       style: TextStyle(color: Colors.black, fontSize: 16.0),
                    //     ),
                    //     Text(
                    //       "Sign up now!",
                    //       style: TextStyle(color: Color(0xFF7f30fc), fontSize: 16.0, fontWeight: FontWeight.w500),
                    //     ),
                    //   ],
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigate to the sign-in page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SignUp()),
                            );
                          },
                          child: Text(
                            "Sign up now!",
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
            ],
          ),
        ),
      ),
    );
  }
}
