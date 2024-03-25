import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool? isChecked = false;
  bool? onChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Personal Data",
          style: GoogleFonts.quicksand(
            color: Color.fromARGB(255, 18, 18, 18),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                      image: const DecorationImage(
                          image: AssetImage("assets/images/profile.jpg"),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 45),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your Name",
                    style: GoogleFonts.quicksand(
                        color: Color.fromARGB(255, 160, 157, 157),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  textField(),
                  const SizedBox(height: 25),
                  Text(
                    "Date Of Birth",
                    style: GoogleFonts.quicksand(
                        color: Color.fromARGB(255, 160, 157, 157),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  textField(),
                  const SizedBox(height: 25),
                  Text(
                    "Your Job",
                    style: GoogleFonts.quicksand(
                        color: Color.fromARGB(255, 160, 157, 157),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  textField(),
                  const SizedBox(height: 25),
                  Text(
                    "Monthly Income",
                    style: GoogleFonts.quicksand(
                        color: Color.fromARGB(255, 160, 157, 157),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  textField(),
                  const SizedBox(height: 25),
                  Text(
                    "Gender",
                    style: GoogleFonts.quicksand(
                        color: Color.fromARGB(255, 160, 157, 157),
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 242, 244, 248),
                            border: Border.all(
                                color: Color.fromARGB(255, 191, 189, 189))),
                        child: Row(
                          children: [
                            Checkbox(
                                value: isChecked,
                                activeColor: Colors.blue,
                                onChanged: (newBool) {
                                  setState(() {
                                    isChecked = newBool;
                                  });
                                }),
                            Text(
                              "Male",
                              style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 242, 244, 248),
                            border: Border.all(
                                color: Color.fromARGB(255, 191, 189, 189))),
                        child: Row(
                          children: [
                            Checkbox(value: onChecked, onChanged: (onBool){
                              setState(() {
                                onChecked = onBool;
                              });
                            }),
                            Text(
                              "Female",
                              style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

textField(){
  return TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                      filled: true,
                      fillColor: Color.fromARGB(255, 242, 244, 248),
                    ),
                  );
}