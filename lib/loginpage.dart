import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/home.dart';
import 'package:flutter_application/widgets/appbar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  bool _obscuretext = true;

  validateform() {
    if (_formkey.currentState!.validate()) {
      Navigator.push(
        context,
        _createRoute(),
      );
      toastfunction('Login Successful👍');
    } else {
      toastfunction('Login Failed👎');
    }
  }

  Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const MyHomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begins = Offset(0.0, 1.0);
      const ends = Offset.zero;
      const curves = Curves.fastOutSlowIn;

      var tweens =
          Tween(begin: begins, end: ends).chain(CurveTween(curve: curves));

      return SlideTransition(
        position: animation.drive(tweens),
        child: child,
      );
    },
  );
}

  void toastfunction(String message) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.blueAccent,
      textColor: Colors.black,
      fontSize: 20,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Login Page'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter email Id',
                          ),
                          validator: (value) {
                            if (value.toString().isEmpty ||
                                !value.toString().contains('@')) {
                              return 'Enter Valid Email Id';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          obscureText: _obscuretext,
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            border: const UnderlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscuretext = !_obscuretext;
                                });
                              },
                              icon: Icon(
                                _obscuretext
                                    ? Icons.remove_red_eye_sharp
                                    : Icons.visibility_off_sharp,
                              ),
                            ),
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value.toString().length < 4 ||
                                value.toString().length > 8) {
                              return 'Password must be between 4-8 digits';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          onPressed: () {
                            validateform();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: const Text('LOGIN'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
