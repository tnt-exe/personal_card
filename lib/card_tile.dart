import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardTile extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isMail;
  final bool isPhone;
  const CardTile({
    super.key,
    required this.text,
    required this.icon,
    this.isMail = false,
    this.isPhone = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.black38,
      child: ListTile(
        onTap: () async => {
          isPhone
              ? ""
              : await launchUrl(
                  Uri.parse(isMail ? "mailto:$text" : "https://$text"),
                )
        },
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.white70,
            fontFamily: "SourceSans3",
          ),
        ),
      ),
    );
  }
}
