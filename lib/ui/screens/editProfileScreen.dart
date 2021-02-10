import 'package:Without_five/styles.dart';
import 'package:Without_five/ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  _selectGallery() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PrimaryColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 90.0,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/prof.png"),
                  ),
                  Positioned(
                      bottom: 0.0,
                      left: (MediaQuery.of(context).size.width - 70) / 2,
                      child: GestureDetector(
                        onTap: () => _selectGallery(),
                        child: CircleAvatar(
                          backgroundColor: Colors.orange[900],
                          child: Icon(
                            FontAwesomeIcons.camera,
                            color: Colors.black,
                          ),
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: FaIcon(
                        FontAwesomeIcons.user,
                        color: PrimaryColor,
                      ),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Button(
                buttonName: "Save",
              )
            ],
          ),
        ));
  }
}
