import 'package:flutter/material.dart';
import 'package:igarchu/constants.dart';
import 'package:igarchu/screens/home/home.dart';
import 'package:igarchu/services/auth.dart';
import 'package:igarchu/widgets/rounded_button.dart';
import 'package:igarchu/widgets/textfield_container.dart';


class OrgRegistrationScreen extends StatefulWidget {
  const OrgRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<OrgRegistrationScreen> createState() => _OrgRegistrationScreenState();
}

class _OrgRegistrationScreenState extends State<OrgRegistrationScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String id = '';
  String orgname ='';
  String address ='';
  String number ='';
  String email= '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
            width: size.width,
            height: size.height,
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
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
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
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('REGISTER AS',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const Text('ANIMAL SHELTER ORGANIZATION USER',
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    onChanged: (value) => {
                                      setState(() => orgname = value)
                                    },
                                    validator: (val) => val!.isEmpty
                                        ? 'Enter Organization Name'
                                        : null,
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
                                      hintText: "Organization Name",
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
                                    // controller: _emailController,
                                    onChanged: (value) => {
                                      setState(() => email = value)
                                    },
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter an email address.' : null,
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
                                      hintText: "Email Address",
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
                                    onChanged: (value) => {
                                      setState(() => address = value)
                                    },
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter Address' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      icon: Icon(
                                        Icons.pin_drop,
                                        color: kbutton2,
                                      ),
                                      hintText: "Location",
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
                                    onChanged: (value) => {
                                      setState(() => number = value)
                                    },
                                    validator: (val) => val!.isEmpty
                                        ? 'Enter 11 digits number.'
                                        : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                      icon: Icon(
                                        Icons.contact_phone,
                                        color: kbutton2,
                                      ),
                                      hintText: "Contact Number",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                               
                                RoundedButton(
                                  text: 'REGISTER',
                                  press: () {
                                   if (_formKey.currentState!.validate()) {
                                        Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                        builder: (context) =>  HomePage()));
                                      }
                                    AuthService addOrgInfo = AuthService();
                                    addOrgInfo.addOrgField(
                                      orgname, 
                                      address, 
                                      number, 
                                      email);  
                                  },
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )),
          )),
    );
  }
}