import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';

class SuperLottoWidget extends StatelessWidget {
  const SuperLottoWidget({Key? key}) : super(key: key);

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
                Text("Super Lotto",
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
                          Text("1 Eth",
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
                Center(
                  child: JumpingDots(
                    color: Colors.black,
                    radius: 20,
                    numberOfDots: 3,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
