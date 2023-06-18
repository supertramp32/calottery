import 'package:caeth/widgets/mega_millions.dart';
import 'package:caeth/widgets/powerball.dart';
import 'package:caeth/widgets/super_lotto.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class HomeScreen extends StatefulWidget {



  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> imgList = [
    "images/goldengate.jpg",
    "images/hollywood.jpg",
    "images/yesomite.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 32,vertical: 32),
        child: FloatingActionButton(
          child: Icon(Icons.cabin,color: Colors.white,),
          backgroundColor: Colors.black, onPressed: () {  },
        ),
      ),
      body: Container(
        width: double.infinity,
          child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList
                .mapIndexed((i,item) => Container(
              width: double.infinity,
              child: Center(
                  child:Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Image.asset(item, fit: BoxFit.cover, width: double.infinity,
                          opacity: const AlwaysStoppedAnimation(.8),
                          ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 1,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ),
                      (i==0) ? PowerBallWidget() : (i==1) ? MegaMillionWidget():SuperLottoWidget()

              ],)
                  )
            ))
                .toList(),
          )),
    );
  }


}
