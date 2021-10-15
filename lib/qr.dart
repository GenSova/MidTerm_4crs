import 'package:flutter/material.dart';

class qrPage extends StatefulWidget {
  @override
  _qrPageState createState() => _qrPageState();

}

class _qrPageState extends State<qrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.error_outline,
                color: Colors.grey,
                size: 45,
              ),
              onPressed: () {
                // do something
              },
            ),
            SizedBox(height: 20,),
            Text('На вашем устройстве отсутствует камера :(')
          ],
        ),
      ),
    );
  }
}