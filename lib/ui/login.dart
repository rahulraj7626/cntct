import 'package:flutter/material.dart';
import 'package:login/ui/contact_details.dart';
import 'package:login/utils/helperfn.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  List lt = [
    {"name": "Aiswarya", "ph": "98093072672"},
    {"name": "Rahul", "ph": "98093072672"},
    {"name": "Aiswarya", "ph": "673876387"},
    {"name": "Rahul", "ph": "37387"},
    {"name": "Aiswarya", "ph": "73798739"},
    {"name": "Rahul", "ph": "675373"},
    {"name": "Aiswarya", "ph": "876387398"},
    {"name": "Rahul", "ph": "98093072672"},
    {"name": "Aiswarya", "ph": "98093072672"},
    {"name": "Rajh", "ph": "98093072672"},
    {"name": "jksjdhj", "ph": "673876387"},
    {"name": "Rahul", "ph": "37387"},
    {"name": "bbsd", "ph": "73798739"},
    {"name": "dkjhhjkd", "ph": "675373"},
    {"name": "dkjhd", "ph": "876387398"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black12,
            child: ListView.builder(
                itemCount: lt.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactDetails(
                                  name: lt[index]["name"],
                                  phone: lt[index]["ph"],
                                )),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        title: txt(lt[index]["name"]),
                        subtitle: Text(lt[index]["ph"]),
                        trailing: GestureDetector(
                          onTap: () {
                            launchURL(lt[index]["ph"]);
                          },
                          child: Icon(
                            Icons.call,
                            size: 30,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  );
                })));
  }
}

Widget contaWi(height, color, width) {
  return Container(
    margin: EdgeInsets.all(8),
    height: height.toDouble(),
    width: width.toDouble(),
    color: color,
  );
}
