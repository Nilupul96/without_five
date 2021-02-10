import 'package:Without_five/styles.dart';
import 'package:Without_five/ui/widgets/profileIcon.dart';
import 'package:flutter/material.dart';

class LevelListScreen extends StatefulWidget {
  @override
  _LevelListScreenState createState() => _LevelListScreenState();
}

class _LevelListScreenState extends State<LevelListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: BackIcon(),
        actions: [Profile()],
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return GridView.builder(
        itemCount: 80,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, int index) {
          return GestureDetector(
              onTap: () {
                print("level:" + (index + 1).toString());
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: _levelListItem(index + 1),
              ));
        });
  }

  _levelListItem(int number) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
          width: (MediaQuery.of(context).size.width - 50) / 4,
          height: (MediaQuery.of(context).size.width - 50) / 4,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(9.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Level"),
              SizedBox(
                height: 10.0,
              ),
              Text(
                number.toString(),
              )
            ],
          ),
        ),
        number > 10
            ? Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
                  width: (MediaQuery.of(context).size.width - 50) / 4,
                  height: (MediaQuery.of(context).size.width - 50) / 4,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(9.0)),
                  child: Center(
                      child: Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 30.0,
                  )),
                ))
            : SizedBox(),
      ],
    );
  }
}
//  colorFilter: ColorFilter.mode(
//                                 !isAvailable
//                                     ? Color(0XFF000000).withOpacity(0.50)
//                                     : Colors.transparent,
//                                 BlendMode.hardLight
