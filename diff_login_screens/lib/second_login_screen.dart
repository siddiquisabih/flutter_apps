import 'package:flutter/material.dart';

class SecondLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('02 Login Screen'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.grey[350],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Username TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),

                // Forget Password Text
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Add your forget password logic here
                    },
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Login Button
                ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


  //  ElevatedButton(
  //                 onPressed: () {
  //                   // Add your login logic here
  //                 },
  //                 child: Text('Login'),
  //               ),