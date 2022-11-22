// ignore_for_file: unnecessary_const, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:igarchu/constants.dart';
import 'package:igarchu/screens/authenticate/register_screen.dart';
import 'package:igarchu/services/auth.dart';
import 'package:igarchu/widgets/rounded_button.dart';
import 'package:igarchu/widgets/underpart.dart';
import 'package:igarchu/widgets/upside.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({required this.toggleView});
  final Function toggleView;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String error = '';
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                  maxWidth: MediaQuery.of(context).size.width),
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  kPrimaryLightColor,
                  kPrimaryLightColor,
                ], begin: Alignment.topLeft, end: Alignment.centerRight),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "iGarchu",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: kbutton1,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w800),
                          ),
                          const Upside(
                            imgUrl: "assets/images/PetLover.png",
                          ),
                        ]),
                  ),
                  const SizedBox(height: 20.0),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Login",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: kbutton2,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 20.0),
                                  TextFormField(
                                      // controller: _emailController,
                                      //change value for email
                                      onChanged: (value) => {
                                        setState(() => email = value)
                                      },
                                      validator: (val) =>
                                        val!.isEmpty ? 'Enter an email.' : null,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        errorStyle: const TextStyle(
                                        fontSize: 15, 
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                      ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: "E-mail",
                                          prefixIcon: const Icon(Icons.email,
                                              color: kbutton2))),
                                  const SizedBox(height: 20.0),
                                  TextFormField(
                                      // controller: _passwordController,
                                      //change value for password
                                       onChanged: (value) => {
                                        setState(() => password = value)
                                       },
                                       validator: (val) => val!.length < 8
                                        ? 'Enter a password atleast 8 character long.'
                                        : null,
                                      obscureText: _isHidden,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        errorStyle: const TextStyle(
                                        fontSize: 15, 
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                      ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            borderSide: BorderSide.none,
                                          ),
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: "Password",
                                          prefixIcon: const Icon(Icons.lock,
                                              color: kbutton2),
                                          suffix: InkWell(
                                            onTap: _togglePasswordView,
                                            child: Icon( 
                                              _isHidden
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                            ),
                                          ),
                                      )),
                                  const SizedBox(height: 10.0),
                                  RoundedButton(
                                      text: 'LOGIN',
                                      press: () async {
                                        if(_formKey.currentState!.validate()){
                                      dynamic result = await _auth.loginWithEmailAndPword(
                                              email, password);
                                      if(result == null) {
                                        setState(() {
                                          error =
                                              'Invalid email and password. Please try again.';
                                        });
                                      }


                                    };
                                        
                                      }),
                                      Text(
                                error,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.red,
                                ),
                              ),
                                const SizedBox(
                                  height: 10,
                                ),
                                  UnderPart(
                                    title: "Don't have an account?",
                                    navigatorText: "Register here",
                                    onTap: () {
                                      widget.toggleView();
                                    },
                                  ),
                                ]),
                          )),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}
