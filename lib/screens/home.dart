import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixthproject/screens/account.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: IconButton(
        //     onPressed: () {}, icon: const Icon(Icons.arrow_back_outlined)),
        centerTitle: true,
        title: Text(
          "Community",
          style: GoogleFonts.quicksand(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => Account()),
              );
            },
            icon: const Icon(
              Icons.account_circle,
              size: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Text(
                  "Learn Stock,",
                  style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "Educate the World",
                  style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 213, 209, 209)),
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(255, 230, 237, 240),
                  isDense: true,
                  prefixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.search,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Search Something...",
                        style: GoogleFonts.quicksand(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  )),
            ),
            const SizedBox(height: 20),
            Container(
              height: 160,
              width: 80,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 230, 237, 240),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How to Start investing in uStock",
                    style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Lemme tell you this, World of investing is really really legit, especially using uStock, Why? Because...",
                    style: GoogleFonts.quicksand(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile2.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile3.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 230, 237, 240),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 9),
                            Text(
                              "+89",
                              style: GoogleFonts.quicksand(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 160,
              width: 80,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 230, 237, 240),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How to Predict the Candlestick",
                    style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "What is candlestick? It's like a candle but not actually sweat candle, it's some benchmark to yo..",
                    style: GoogleFonts.quicksand(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile2.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile3.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 230, 237, 240),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 9),
                            Text(
                              "+89",
                              style: GoogleFonts.quicksand(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 180,
              width: 80,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 230, 237, 240),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Is Trading Safe for Newbie Invester",
                    style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Many people ask us about trading in uStock, is trading safe for you if you're a newbie player in uSt...",
                    style: GoogleFonts.quicksand(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile1.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile2.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.amber,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/profile3.jpg"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 230, 237, 240),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 9),
                            Text(
                              "+89",
                              style: GoogleFonts.quicksand(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
