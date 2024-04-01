import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationPage extends StatelessWidget {
  Future<void> _mapLauncher() async {
    const String location = "https://maps.app.goo.gl/SEyFsue39RMP57o57";
    if (await canLaunch(location)) {
      await launch(location);
    }
  }

  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey, width: 1.2),
        ),
        padding: const EdgeInsets.all(5),
        child: InkWell(
          onTap: () => _mapLauncher(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/giza_pyramid_location.jpg',
              //scale: 4.2,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 250,
            ),
          ),
        ),
      ),
    );
  }
}
