import 'package:beta_kart/controllers/auth.dart';
import 'package:beta_kart/screens/homepage.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeButton = true;
                      });
                      await AuthController().signUpUser("nayakpradeep777@gmail.com", "Pradeep");
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      setState(() {
                        changeButton = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 40 :150,
                      height: 40,
                      alignment: Alignment.center,
                      child: changeButton
                      ? Icon(Icons.done,
                      color: Colors.white,
                      )
                      :Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        shape: changeButton 
                        ? BoxShape.circle
                        : BoxShape.rectangle,
                       
                      ),
                    ),
                    
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("OR"),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    child: Container(
                      height: 40,
                      width: 180,
                     child: Image.asset("assets/images/signupwithgoogle.png",
                     fit: BoxFit.fill,),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
