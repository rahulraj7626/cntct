import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(ph) async {
  await launch('tel:+${ph.phone.toString()}');
}

Widget txt(tt) {
  return Text(
    tt,
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
  );
}
