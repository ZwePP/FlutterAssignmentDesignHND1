import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: LoginPage(),
    )
  );
}
class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Login Screen"),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
              fontSize: 35,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40),
            child: Form(child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white38),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box, color: Colors.purple,),
                          border: InputBorder.none,
                          hintText: 'Enter Email',
                          labelText: "Email", labelStyle: TextStyle(
                          color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white38),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.password, color: Colors.purple,),
                          border: InputBorder.none,
                          hintText: 'Enter password',
                          labelText: "Password", labelStyle: TextStyle(
                          color: Colors.grey,),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),


                ElevatedButton(onPressed: () {},
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent,
                    ),
                ),
                SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an Account?",
                      style: TextStyle(color: Colors.grey),),
                    SizedBox(width: 8),
                    Text("Sign Up", style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            )),
          )
        ],
      ),
    );
  }
}