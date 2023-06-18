import 'package:flutter/material.dart';

class MegaMillionWidget extends StatelessWidget {
  const MegaMillionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Card(
          elevation: 8,
          color: Colors.white.withOpacity(0.3),
          child: Container(
            height: 500,
            width: 500,
            padding: EdgeInsets.symmetric(vertical: 24,horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Mega Millions",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.join_full),
                          SizedBox(width: 8,),
                          Text("2 Eth",
                            style: Theme.of(context).textTheme.bodyMedium,),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.money),
                          SizedBox(width: 8,),
                          Text("8 Eth",
                            style: Theme.of(context).textTheme.bodyMedium,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.timelapse_outlined),
                          SizedBox(width: 8,),
                          Text("7 Days",
                            style: Theme.of(context).textTheme.bodyMedium,),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person),
                          SizedBox(width: 8,),
                          Text("5 people",
                            style: Theme.of(context).textTheme.bodyMedium,),
                        ],
                      ),
                      Text("** Terms and conditions applied.",
                        style: Theme.of(context).textTheme.displaySmall,),
                    ],),
                ),
                Card(
                  color: Colors.black,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 32,vertical: 8),
                      child: Text("JOIN",
                        style: Theme.of(context).textTheme.bodyMedium,
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
