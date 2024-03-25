import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sixthproject/screens/profile.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              // HEADER
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 6,
                        )
                      ],
                      color: Colors.blueGrey,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/profile.jpg"),
                          fit: BoxFit.contain),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  const SizedBox(width: 13),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "William John Mali",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Aggressive Investor"),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),

              // ACTIONS
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => Profile()));
                },
                child: actionItem("Personal Data", Icons.person),
              ),

              const SizedBox(height: 20),
              actionItem("Settings", Icons.settings),
              const SizedBox(height: 20),
              actionItem("E-Statement", Icons.document_scanner),
              const SizedBox(
                height: 20,
              ),
              actionItem("Referral Code", Icons.favorite),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 20),
              actionItem("FAQs", Icons.stop_circle_rounded),
              const SizedBox(height: 20),
              actionItem("Our HandBook", Icons.notes_outlined),
              const SizedBox(height: 20),
              actionItem("Community", Icons.people),
              const SizedBox(height: 20),
              Container(
                height: 75,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 168, 205, 235).withOpacity(.5),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: const Icon(Icons.headphones_outlined,
                              color: Color.fromARGB(255, 3, 125, 239),
                              size: 40),
                        )
                      ],
                    )),
                    Expanded(
                      flex: 3,
                      child: Text("Feel Free To Ask, We Ready To Help",
                          style: GoogleFonts.quicksand(
                              color: Color.fromARGB(255, 5, 134, 239),
                              fontSize: 12,
                              fontWeight: FontWeight.w900)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color.fromARGB(207, 120, 183, 214),
          selectedItemColor: Color.fromARGB(255, 29, 48, 62),
          selectedFontSize: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.crop_square_rounded), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.mail_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded), label: ""),
          ]),
    );
  }
}

actionItem(String title, IconData icon) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(icon),
          ),
          const SizedBox(width: 15),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
      const Icon(
        Icons.arrow_forward_ios,
        size: 16,
      ),
    ],
  );
}
