import 'package:flutter/material.dart';
import 'package:igarchu/constants.dart';
import 'package:igarchu/screens/authenticate/register_screen.dart';
import 'package:igarchu/widgets/rounded_button.dart';
import 'package:igarchu/widgets/textfield_container.dart';
import 'package:igarchu/widgets/underpart.dart';

import 'login_screen.dart';

class OrganizationScreen extends StatefulWidget {
  const OrganizationScreen({Key? key}) : super(key: key);

  @override
  State<OrganizationScreen> createState() => _OrganizationScreenState();
}

class _OrganizationScreenState extends State<OrganizationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryLightColor,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: kbutton2,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => RegisterScreen()),
                );
              },
            ),
          ),
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
                            // key: _formKey,
                            child: Column(
                              children: [
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    validator: (val) => val!.isEmpty
                                        ? 'Enter Organization Name'
                                        : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
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
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter Address' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
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
                                    validator: (val) => val!.isEmpty
                                        ? 'Enter 11 digits number.'
                                        : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
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
                                TextFieldContainer(
                                  textfieldSize: size.width * 0.8,
                                  child: TextFormField(
                                    validator: (val) =>
                                        val!.isEmpty ? 'Enter an email.' : null,
                                    cursorColor: Colors.red,
                                    decoration: const InputDecoration(
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
                                    // obscureText: isHidden,
                                    validator: (val) => val!.length < 6
                                        ? 'Enter a password atleast 6 character long.'
                                        : null,
                                    // onChanged: (val) {
                                    //   setState(() => password = val);
                                    // },
                                    decoration: const InputDecoration(
                                      icon: Icon(
                                        Icons.lock,
                                        color: kbutton2,
                                      ),
                                      hintText: 'Password',
                                      hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                      ),
                                      // suffix: InkWell(
                                      //   onTap: togglePasswordView,
                                      //   child: Icon(
                                      //     isHidden
                                      //         ? Icons.visibility
                                      //         : Icons.visibility_off,
                                      //   ),
                                      // ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                RoundedButton(
                                  text: 'REGISTER',
                                  press: () {
                                    //PADONG LOGIN
                                    // Navigator.of(context).pushReplacement(
                                    //     MaterialPageRoute(builder: (_) => const LoginScreen()),
                                    //     );

                                    //SAMPLE PADONG ANIMAL HOMESCREEN
                                    // Navigator.of(context).pushReplacement(
                                    //   MaterialPageRoute(
                                    //       builder: (_) =>
                                    //           AnimalOrgHomeScreen()),
                                    // );
                                  },
                                ),
                                UnderPart(
                                    title: "WANT TO ADOPT A PET?",
                                    navigatorText: "Register here",
                                    onTap: () {
                                      // widget.toggleView();
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) => RegisterScreen()),
                                      );
                                    }),
                                const SizedBox(
                                  height: 30,
                                ),
                                UnderPart(
                                    title: "Already have an account?",
                                    navigatorText: "Login here",
                                    onTap: () {
                                      // widget.toggleView();
                                      Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const LoginScreen()),
                                      );
                                    }),
                                const SizedBox(
                                  height: 30,
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