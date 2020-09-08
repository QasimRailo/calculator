import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Interface(),
  ));
}

class Interface extends StatefulWidget {
  @override
  _InterfaceState createState() => _InterfaceState();
}

class _InterfaceState extends State<Interface> {
  TextEditingController c;
  double number1 = 0;
  double number2 = 0;
  double result = 0;

  void initState() {
    c = new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(360.0), // here the desired height
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.black12,
                  centerTitle: true,
                  title: Text(
                    "Calculator",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                TextField(
                  controller: c,
                  maxLines: 1,
                  // showCursor: true,
                  readOnly: true,
                  style: TextStyle(color: Colors.white, fontSize: 45),
                  cursorColor: Colors.white,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '0',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      height: 7,
                    ),
                  ),
                ),
              ],
            )),
        body: Container(
          color: Colors.black,
          child: GridView.count(
            primary: true,
            padding: const EdgeInsets.all(8),
            crossAxisSpacing: 36,
            mainAxisSpacing: 10,
            crossAxisCount: 4,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    c.text = '0';
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child:
                      Text("AC".toUpperCase(), style: TextStyle(fontSize: 20)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '%';
                    else
                      c.text = '%';
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child:
                      Text("%".toUpperCase(), style: TextStyle(fontSize: 33)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '+/-';
                    else
                      c.text = '+/-';
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child:
                      Text("+/-".toUpperCase(), style: TextStyle(fontSize: 21)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0') {
                      number1 = double.parse(c.text);
                      c.text = c.text + '/';
                      print("$number1");
                    }
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child:
                      Text("/".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '7';
                    else
                      c.text = '7';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("7".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '8';
                    else
                      c.text = '8';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("8".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '9';
                    else
                      c.text = '9';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("9".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0') {
                      number1 = double.parse(c.text);
                      c.text = c.text + 'x';
                      print("$number1");
                    }
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child:
                      Text("x".toUpperCase(), style: TextStyle(fontSize: 34)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '4';
                    else
                      c.text = '4';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("4".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '5';
                    else
                      c.text = '5';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("5".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '6';
                    else
                      c.text = '6';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("6".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0') {
                      number1 = double.parse(c.text);
                      c.text = c.text + '+';
                      print("$number1");
                    }
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child:
                      Text("+".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '1';
                    else
                      c.text = '1';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("1".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '2';
                    else
                      c.text = '2';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("2".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '3';
                    else
                      c.text = '3';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("3".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0') {
                      number1 = double.parse(c.text);
                      c.text = c.text + '-';
                      print("$number1");
                    }
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child:
                      Text("-".toUpperCase(), style: TextStyle(fontSize: 52)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0')
                      c.text = c.text + '0';
                    else
                      c.text = '0';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child:
                      Text("0".toUpperCase(), style: TextStyle(fontSize: 40)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0') {
                      if (!c.text.contains('.')) {
                        c.text = c.text + '.';
                      } else {}
                    } else
                      c.text = '0.';
                  },
                  color: Colors.black26,
                  textColor: Colors.white,
                  child: Text(".".toUpperCase(),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != 0) {
                      String s = c.text.toString();
                      int l = s.length;
                      String dew = s.substring(0, l - 1);
                      c.text = dew;
                    }
                  },
                  color: Colors.grey,
                  textColor: Colors.white,
                  child:
                      Text("C".toUpperCase(), style: TextStyle(fontSize: 30)),
                ),
              ),
              Container(
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      side: BorderSide(color: Colors.black38)),
                  onPressed: () {
                    if (c.text != '0') {
                      var sign = c.text as String;
                      if (sign.toString().contains('+')) {
                        var index = sign.indexOf("+");
                        print("$index");
                        number2 =
                            double.parse(sign.substring(index, sign.length));
                        print("$number2");
                        result = number1 + number2;
                        c.text = result.toString();
                      } else if (sign.toString().contains('-')) {
                        var index = sign.indexOf("-");
                        print("$index");
                        number2 = double.parse(
                            sign.substring(index + 1, sign.length));
                        print("$number2");
                        result = number1 - number2;
                        c.text = result.toString();
                      } else if (sign.toString().contains('/')) {
                        var index = sign.indexOf("/");
                        number2 = double.parse(
                            sign.substring(index + 1, sign.length));
                        result = number1 / number2;
                        c.text = result.toString();
                      } else if (sign.toString().contains('x')) {
                        var index = sign.indexOf("x");
                        number2 = double.parse(
                            sign.substring(index + 1, sign.length));
                        result = number1 * number2;
                        c.text = result.toString();
                      }
                    }
                  },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child:
                      Text("=".toUpperCase(), style: TextStyle(fontSize: 45)),
                ),
              ),
            ],
          ),
        ));
  }
}
