import 'package:flutter/material.dart';
import 'package:login/utils/helperfn.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetails extends StatefulWidget {
  final String name;
  final String phone;
  const ContactDetails({Key? key, required this.name, required this.phone})
      : super(key: key);

  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          CircleAvatar(
            radius: 70,
            child: Icon(
              Icons.person,
              size: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              txt(widget.name),
              Text(
                widget.phone,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
