import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  final double coverHeight = 210;
  const Cover({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: coverHeight,
      color: Theme.of(context).backgroundColor,
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(
              children: [
                InkWell(
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                      color: Colors.blueAccent,
                    ),
                  ),
                  onTap: () {
                    print('change your profile');
                  }, //......
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: InkWell(
                    child: new Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.edit,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      print('Edit button');
                    }, //.......
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
