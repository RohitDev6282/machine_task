import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:machine_task/constant.dart';
import 'package:machine_task/models/gallery_modal.dart';
import 'package:machine_task/screen/details/home/home_screen.dart';

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  
  List<String> option = ["photos","like","Collection"];
  int selectedIndex =0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: kTextColor);
      
  static const TextStyle optionStyles =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey);
  final Gallery picture;

   DetailScreen({Key? key, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
          Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(picture.image),
            fit: BoxFit.cover,
          ),
        ),),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon:const Icon(
                  Icons.arrow_back,
                  color: kTextColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 80),
              child: Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: const Color(0xff7c94b6),
                  image: DecorationImage(
                    image: AssetImage(picture.images),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 150),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 20, 20),
                  child: Text(picture.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(top: 280, left: 40),
                child: Text("@xteemo",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize:18,
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 330, left: 40),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 16,
                          width: 16,
                          child:
                              Image.asset("android/assests/images/location.png")),
                      SizedBox(width: 5),
                      Text(
                        picture.instagram,
                        style: optionStyle,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        Container(
                            height: 16,
                            width: 16,
                            child: Image.asset(
                                "android/assests/images/instagram.png")),
                        SizedBox(width: 5),
                        Text(
                          picture.instagram,
                          style: optionStyle,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:100, bottom: 10),
              child: DraggableScrollableSheet(
                  builder: (context, controller) => Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Column(
                          children: <Widget>[
                            IconButton(
                                onPressed: () {
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
                                             const HomePage()));
                                },
                                icon: const Icon(Icons.remove,),),
                               Padding(
                                 padding: const EdgeInsets.all(4.0),
                                 child: Row(
                                   children: [
                                    Padding(
                                       padding: const EdgeInsets.only(left: 30,right: 30),
                                       child: Text("Photos",
                                        style:TextStyle(color:Colors.black,
                                        fontSize: 20,fontWeight: FontWeight.bold),),
                                     ),
                                       Padding(
                                         padding:  const EdgeInsets.only(left: 30,right: 30),
                                         child: Text("Like",
                                      style:optionStyles),
                                       ),
                                       Text("Collection",
                                      style:optionStyles),
                                   ],
      
                                 
                                 ),
                               ),
                             SingleChildScrollView(
                               scrollDirection: Axis.horizontal,
                               child: Row(children: [
                                 Padding(
                                   padding: const EdgeInsets.only(top:5, bottom:15,
                                   left: 20),
                                   child: Container(
                                     height:MediaQuery.of(context).size.height*0.27,
                  width:MediaQuery.of(context).size.height*0.28,
                 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                                    
                                     "android/assests/images/container.jpg",
                                      fit:BoxFit.cover,
                                   ),
                  ),
                ),
                                   
                                  //   Container(
                                  //    height:180,
                                  //  width:180,
                                  //  child: Image.asset(
                                    
                                  //    "android/assests/images/container.jpg",
                                  //     fit:BoxFit.cover,
                                  //  ),
                                  //  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),),
                                 )
                               ,
                               Padding(
                                 padding: const EdgeInsets.only(left:20.0,
                                 top:15),
                                 child:  Container(
                                     height:180,
                  width:180,
                 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                                    
                                     "android/assests/images/container1.jpg",
                                      fit:BoxFit.cover,
                                   ),
                  ),
                ),
                               )],),
                             )
                          ],
                        ),
                        
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
