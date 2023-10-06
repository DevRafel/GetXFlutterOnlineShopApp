// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var fromKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(216, 255, 245, 1),
      body: LayoutBuilder(
        builder: (context, cons) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: cons.maxHeight,
            ),
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
              child: Column(
                children: [
                  //login screen header
                  Form(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 285,
                      child: Image.asset(
                        'images/logo.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 23
                  ),
                  //login screen sing-in form
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(71, 255, 255, 255),
                      borderRadius: BorderRadius.all(
                        Radius.circular(60),
                      ),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Color.fromRGBO(0, 255, 187, 0.438),
                            offset: Offset(0, -3)),
                      ],
                    ),
                    child: Column(
                      children: [
                        //email-password-login button
                        Form(
                          key: fromKey,
                          child: Column(
                            children: [
                              //email
                              TextFormField(
                                controller: emailController,
                                validator: (val) =>
                                    val == "" ? "Please write email" : null,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Color.fromRGBO(0, 255, 187, 100),
                                  ),
                                  hintText: "email...",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.white60,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white60,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white60,
                                    ),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                      color: Colors.white60,
                                    ),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 6,
                                  ),
                                  fillColor: Colors.white,
                                  filled: true,
                                ),
                              ),
                              const SizedBox(height: 18),
                              // password
                              Obx(
                                () => TextFormField(
                                  controller: passwordController,
                                  obscureText: isObsecure.value,
                                  validator: (val) => val == ""
                                      ? "Please write password"
                                      : null,
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.vpn_key_sharp,
                                      color: Color.fromRGBO(0, 255, 187, 100),
                                    ),
                                    suffixIcon: Obx(
                                      () => GestureDetector(
                                        onTap: () {
                                          isObsecure.value = !isObsecure.value;
                                        },
                                        child: Icon(
                                          isObsecure.value
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color:
                                              Color.fromRGBO(0, 255, 187, 100),
                                        ),
                                      ),
                                    ),
                                    hintText: "password...",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: const BorderSide(
                                          color: Colors.white60,
                                        )),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.white60,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.white60,
                                      ),
                                    ),
                                    disabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: const BorderSide(
                                        color: Colors.white60,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 14,
                                      vertical: 6,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 18),
                              //button
                              Material(
                                color: Color.fromRGBO(0, 255, 187, 100),
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(30),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 28,
                                    ),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        //dont have an account button - button

                        SizedBox(height: 16),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don' t have an Account?",
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "SignUp Here",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            )
                          ],
                        ),
                        //admin you admin - button

                        const Text(
                          "Or",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Are you an Admin? "),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Click Here",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
