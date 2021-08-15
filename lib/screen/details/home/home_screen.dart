import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:machine_task/constant.dart';
import 'package:machine_task/models/gallery_modal.dart';
import 'package:machine_task/screen/details/datail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: kTextColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
                itemCount: gallery.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 3.5,
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              gallery[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 110, left: 30),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                          transitionDuration:
                                            const  Duration(seconds: 2),
                                          transitionsBuilder: (context, animation,
                                              animationTime, child) {
                                            animation = CurvedAnimation(
                                                parent: animation,
                                                curve: Curves.elasticInOut);
                                            return ScaleTransition(
                                              alignment: Alignment.center,
                                              scale: animation,
                                              child: child,
                                            );
                                          },
                                          pageBuilder: (context, animation,
                                                  animationTime) =>
                                              DetailScreen(
                                                  picture: gallery[index])));
                                },
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                    child: Image.asset(
                                      gallery[index].images,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: Text(
                                    gallery[index].title,
                                    style: optionStyle,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  );
                }),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: kTextColor,
                    ),
                  ),
                  const SizedBox(width: 100),
                  const Text("Plants",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
