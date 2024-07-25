import 'package:flutter/material.dart';
import 'package:vibe_chat_app/pages/chatpage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF553370),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 50.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "VibeChat",
                    style: TextStyle(
                        color: Colors.white, //Color(0xffc199cd),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Color(0xFF3a2144),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.search,
                      color: Colors.white, //Color(0xffc199cd),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.16,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/pic1.png",
                          height: 70,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              // Navigate to the sign-in page
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChatPage()),
                              );
                            },
                            child: Row(
                              children: [Text(
                                "Sahil Gupta",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                            ]),
                          ),
                          Text(
                            "Hello, what are you doing",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        "04:30 PM",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      // Navigate to the sign-in page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatPage()),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset(
                            "images/img.png",
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                                children: [Text(
                                  "Atul Sharma",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                                ]),
                            Text(
                              "Hello, what are you doing",
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "04:30 PM",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
