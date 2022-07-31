import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {

    /*
    * @Info: below if condition is used to validate the form fields
    * */
    if(_formKey.currentState!.validate()) {
      // this setState function will change the login button with tick mark
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      // this setState function will bring back the original login button
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login_hey.png",
                  fit: BoxFit.cover,
                  height: 250,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter username", labelText: "Username"),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Username cannot be empty" ;
                          }
                          return null ;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter password", labelText: "Password"),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Password cannot be empty" ;
                          } else if(value.length < 6) {
                            return "Password length should be at least 6" ;
                          }
                          return null ;
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      /*
                      ElevatedButton(style: TextButton.styleFrom(minimumSize: const Size(150, 40)),onPressed: (){
                       // print("Hi Faisal") ;
                        Navigator.pushNamed(context, MyRoutes.homeRoute) ;
                      }, child: const Text("Login"))
                      */

                      // InkWell is used to add ripple effect on your container
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            // child: Ink(                             // --> Ink works similar to container
                            duration: const Duration(seconds: 1),
                            // --> used with AnimatedContainer
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            // --> used with AnimatedContainer

                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
