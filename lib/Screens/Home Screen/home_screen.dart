import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Details Screen/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe77169),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 85,
        backgroundColor: const Color(0xffe77169),
        leading: const Icon(
          Icons.home,
          size: 30,
        ),
        title: const Text(
          "My Fav. Icons",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            CupertinoIcons.moon_fill,
            size: 30,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Text(
                "A",
                style: TextStyle(fontSize: 25, color: Color(0xffe77169)),
              ),
            ),
            const Text(
              "Hello, Aayush.",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
            ),
            const Text(
              "\nThis is My favourite Icons.\nHere is 10 Icons.\n\n",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed("more"),
              child: Container(
                alignment: Alignment.center,
                height: 320,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Hero(
                    tag: 'akp',
                    transitionOnUserGestures: true,
                    child: Material(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                CupertinoIcons.info,
                                color: Color(0xffe77169),
                                size: 35,
                              ),
                              Icon(
                                CupertinoIcons.ellipsis_vertical,
                                color: Color(0xffe77169),
                                size: 35,
                              ),
                            ],
                          ),
                          SizedBox(height: 150,),
                          Text(
                            "10 Icons",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "My favourite",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 30,
                            ),
                          ),SizedBox(height: 20,),
                          LinearProgressIndicator(
                            value: 1,
                            backgroundColor: Colors.grey,
                            color: Color(
                              0xffe77169,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  // Route _createRoute() {
  //   return PageRouteBuilder(
  //     pageBuilder: (context, animation, secondaryAnimation) => const DetailsScreen(),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       return FadeTransition(
  //         opacity: animation,
  //         child: child,
  //       );
  //     },
  //     transitionDuration: const Duration(seconds: 1),
  //   );
  // }
}


