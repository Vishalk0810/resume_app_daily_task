import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 120,top: 20),
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Images/img1.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 120),
                  child: Text(
                    'Welcome Back,',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    'Make it work, make it right, make it fast.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_2_outlined),
                    hintText: 'E-mail',
                    labelText: 'E-mail',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 17),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.amber,
                    )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    suffixIcon: Icon(Icons.visibility_off),
                    hintText: 'Password',
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 17),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.amber,
                    )),
                  ),
                ),
                SizedBox(height: 17,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Colors.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text('LOGIN',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 17,
                      letterSpacing: 0.8,
                    ),),
                  ),
                ),
                SizedBox(height: 20,),
                Text('OR',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.2,color: Colors.black),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/Images/google.png',height: 40,width: 40,),
                      SizedBox(width: 8,),
                      Text('Sign-In with Google',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account?",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),),
                    SizedBox(width: 5,),
                    Text('Signup',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      color: Colors.blue
                    ),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
