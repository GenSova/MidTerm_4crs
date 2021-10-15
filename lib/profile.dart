import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profilePageState createState() => _profilePageState();

}

class _profilePageState extends State<profile> {
  TextEditingController _controller =
  TextEditingController(text: "Курьер");
  bool _isEnable = false;

  /*void editable(){
    if (_isEnable == false){
      setState(() {
        _isEnable = true;
      });
    }
    if (_isEnable == true){
      setState(() {
        _isEnable = false;
      });
    }
  }*/

  void doNothing(){

  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.transparent,
    body: Center(
      child: Column(
        children: <Widget>[
          Container(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: Colors.grey.withOpacity(0.3),
                width: 2,
              )
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Имя',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 7,),
                  TextField(
                    style: TextStyle(
                      fontSize: 17,
                      color: Color.fromRGBO(45, 40, 73, 1),
                    ),
                    decoration: InputDecoration(
                        suffixStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(45, 40, 73, 1),
                        ),
                        suffixText: 'Изменить',
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(239, 242, 247, 1),
                        //prefixIcon: Icon(Icons.account_circle),
                        hintText: 'Способ доставки'
                    ),

                    controller: _controller,
                  ),
                  SizedBox(height: 15,),
                  Text(
                    'Телефон',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 7,),
                  TextField(
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(45, 40, 73, 1),
                    ),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(239, 242, 247, 1),
                        //prefixIcon: Icon(Icons.account_circle),
                        hintText: 'Номер телефона'
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
          ),
          SizedBox(height: 20,),
          new ButtonTheme(
            child : new ElevatedButton(
              onPressed: doNothing,
              child: new Text(
                'История добавления товара',
                style: TextStyle(
                  fontSize: 15
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(350, 50),
                primary: Color.fromRGBO(72, 84, 108, 1),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                ),
              ),
            ),
          )],
      ),
    ),
  );
  }
  }