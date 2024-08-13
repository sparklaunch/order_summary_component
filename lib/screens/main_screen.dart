import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  spreadRadius: 5,
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(3, 3),
                ),
              ]),
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                "assets/images/Hero.svg",
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    const Text(
                      "Order Summary",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color.fromRGBO(40, 45, 80, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "You can now listen to millions of songs, audiobooks, and podcasts on any device anywhere you like!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(119, 125, 138, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(246, 248, 254, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/images/Music.svg"),
                            const SizedBox(width: 20),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Annual Plan",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(34, 45, 69, 1),
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "\$59.99/year",
                                  style: TextStyle(
                                    color: Color.fromRGBO(121, 126, 148, 1),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            const Text(
                              "Change",
                              style: TextStyle(
                                color: Color.fromRGBO(105, 93, 227, 1),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(49, 37, 221, 1),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 10,
                        ),
                        child: const Text(
                          "Proceed to Payment",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(15),
                          foregroundColor:
                              const Color.fromRGBO(100, 108, 128, 1),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Cancel Order",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
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
