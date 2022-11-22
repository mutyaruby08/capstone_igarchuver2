// ignore_for_file: use_build_context_synchronously, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:igarchu/constants.dart';
import 'package:igarchu/screens/authenticate/individual_register_screen.dart';
import 'package:igarchu/screens/authenticate/login_screen.dart';
import 'package:igarchu/screens/authenticate/organization_register_screen.dart';
import 'package:igarchu/services/auth.dart';
import 'package:igarchu/widgets/rounded_button.dart';
import 'package:igarchu/widgets/textfield_container.dart';
import 'package:igarchu/widgets/underpart.dart';


class RegisterScreen extends StatefulWidget {
  final Function toggleView;
  const RegisterScreen({required this.toggleView});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String id= '';
  String fullname= '';
  String email = '';
  String password = '';
  String dropdownValue = "Individual";
  var dropdownItems = ["Individual", "Animal Shelter Organization",];
  String error = '';
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: kPrimaryLightColor,
        //   leading: IconButton(icon: Icon(Icons.arrow_back, color: kbutton2,),
        //    onPressed: () { widget.toggleView(); },),
        // ),
          body: SizedBox(
        // width: size.width,
        // height: size.height,
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
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(236, 167, 102, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Create New Account',
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    // controller: _nameController,
                                    onChanged: (value) => {
                                      setState(() => fullname = value)
                                    },
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter Full Name.' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      icon: Icon(
                                        Icons.person,
                                        color: kbutton2,
                                      ),
                                      hintText: "Full Name",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                ],
                                ),
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    // controller: _emailController,
                                    onChanged: (value) => {
                                      setState(() => email = value)
                                    },
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter an email.' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      icon: Icon(
                                        Icons.email,
                                        color: kbutton2,
                                      ),
                                      hintText: "Email",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    // controller: _passwordController,
                                    obscureText: _isHidden,
                                    onChanged: (val) {
                                      setState(() => password = val);
                                    },
                                    validator: (val) => val!.length < 8
                                        ? 'Enter a password atleast 8 character long.'
                                        : null,
                                    decoration:  InputDecoration(
                                      suffix: InkWell(
                                          onTap: _togglePasswordView,
                                          child: Icon( 
                                            _isHidden
                                                ? Icons.visibility
                                                : Icons.visibility_off,
                                          ),
                                      ),
                                      errorStyle: const TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      
                                      icon: const Icon(
                                        Icons.lock,
                                        color: kbutton2,
                                      ),
                                      hintText: 'Password',
                                      hintStyle: const TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Select User Role:",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        color: kbutton2,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      child: DropdownButton(
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: kbutton1,
                                        ),
                                        value: dropdownValue,
                                        onChanged: (String? value) {
                                          setState(() {
                                            dropdownValue = value!;
                                          });
                                        },
                                        items: dropdownItems.map((String item) {
                                          return DropdownMenuItem(
                                              child: 
                                              Text(item), value: item);
                                        }).toList(),
                                      ),
                                    ),
                                  ]),

                                RoundedButton(
                                  text: 'REGISTER',
                                  press: () async {
                                    if(_formKey.currentState!.validate()){
                                      dynamic result = await _auth.registerWithEmailAndPword(
                                              email, password);
                                      AuthService addUser = AuthService();
                                      if(result == null) {
                                        setState(() {
                                          error =
                                              'Please provide a valid email address';
                                        });
                                      }
                                      else if(result != null) {
                                        if (dropdownValue == "Individual") {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                   IndivRegisterScreen() ));
                                      } else if (dropdownValue == "Animal Shelter Organization") {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    OrgRegistrationScreen()));
                                        }
                                      if (dropdownValue == "Individual") {
                                        addUser.addUserCollection(fullname, email,
                                            password, dropdownValue, id);
                                        }
                                        else if(dropdownValue == "Animal Shelter Organization") {
                                        addUser.addUserCollection(fullname, email,
                                          password, dropdownValue, id);
                                      }
                                    }
                                  }
                                  // => register(authService),
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
                                    title: "Already have an account?",
                                    navigatorText: "Login here",
                                    onTap: () {
                                      widget.toggleView();
                                    }),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ))
                      ],
                    )),
              ),
            ],
          ),
        )),
      )),
    );
  }
    void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}