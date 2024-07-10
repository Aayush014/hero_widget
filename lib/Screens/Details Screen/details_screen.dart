import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'akp',
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 85,
          backgroundColor: Colors.white,
          leading: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.of(context).pop(),
              child: const Icon(
                CupertinoIcons.back,
                color: Colors.grey,
                size: 35,
              )),
          centerTitle: true,
          title: const Text(
            "My Icons",
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.grey,
              size: 35,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                CupertinoIcons.info,
                color: Color(0xffe77169),
                size: 35,
              ),
              const Text(
                "\n\n10 Icons",
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
              ),
              const Text(
                "My favourite\n",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              const LinearProgressIndicator(
                value: 1,
                backgroundColor: Colors.grey,
                color: Color(0xffe77169),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: iconsOrName.length,
                  itemBuilder: (context, index) => Card(
                    color: Colors.white,
                    elevation: 5,
                    child: ListTile(
                      leading: Checkbox(
                        activeColor: const Color(0xffe77169),
                        checkColor: Colors.white,
                        value: true,
                        onChanged: (value) {},
                      ),
                      title: Text(
                        iconsOrName[index]['name'],
                        style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500),
                      ),
                      trailing: Icon(
                        iconsOrName[index]['icon'],
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> iconsOrName = [
  {'icon': CupertinoIcons.snow, 'name': 'Snow'},
  {'icon': CupertinoIcons.heart, 'name': 'Heart'},
  {'icon': CupertinoIcons.star, 'name': 'Star'},
  {'icon': CupertinoIcons.bell, 'name': 'Bell'},
  {'icon': CupertinoIcons.chat_bubble, 'name': 'Chat Bubble'},
  {'icon': CupertinoIcons.camera, 'name': 'Camera'},
  {'icon': CupertinoIcons.search, 'name': 'Search'},
  {'icon': CupertinoIcons.home, 'name': 'Home'},
  {'icon': CupertinoIcons.settings, 'name': 'Settings'},
  {'icon': CupertinoIcons.person, 'name': 'Person'},
];
