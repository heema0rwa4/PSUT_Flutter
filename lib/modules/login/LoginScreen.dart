import 'package:course_implemintation_wrongspilling/Shared/Components/components.dart';
import 'package:course_implemintation_wrongspilling/modules/chat/ChatScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
// keyboardAppearance:Brightness.dark ,
// onFieldSubmitted:(String value){
//                 print(value);
// } ,
//               onChanged: (String value){
//                 print(value);
//               },

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email address",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                defaultButton(
                  function: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => ChatScreen()));
                  },
                  text: 'Login',
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Dont\'t have an account',
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register now',
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
