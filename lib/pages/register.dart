import 'package:flutter/material.dart';
import 'login.dart'; // Import halaman Login

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3, // Adjusted height
                  decoration: BoxDecoration(
                    color: Colors.yellow[700],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100, left: 20), // Increase top padding
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: 'SpicyRice',
                            fontSize: 40, // Increased font size
                            fontWeight: FontWeight.w900, // Extra bold
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20), // Increased space between title and description
                        Text(
                          "Silahkan masukan akun yang tepat dan pastikan\ntidak melakukan kesalahan ya.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40), // Space between header and form container

            // Form Fields without Card container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Email Field
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Masukan email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Password Field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Masukan password",
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Confirm Password Field
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Konfirmasi Password",
                      hintText: "Masukan password",
                      suffixIcon: Icon(Icons.visibility),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Forget Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        // Tambahkan aksi untuk lupa password
                      },
                      child: Text(
                        "Forget password?",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Register Button
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi untuk proses registrasi
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      textStyle: TextStyle(fontSize: 16),
                      minimumSize: Size(double.infinity, 50), // Memperpanjang tombol
                    ),
                    child: Text("Register"),
                  ),
                  SizedBox(height: 20),

                  // Social Media Login
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Tambahkan fungsi login via Google
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.grey),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12),
                          textStyle: TextStyle(fontSize: 16),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        icon: Icon(Icons.g_mobiledata, color: Colors.red),
                        label: Text(
                          "Login with Google",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Tambahkan fungsi login via Facebook
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: BorderSide(color: Colors.grey),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12),
                          textStyle: TextStyle(fontSize: 16),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        icon: Icon(Icons.facebook, color: Colors.blue),
                        label: Text(
                          "Login with Facebook",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),

                  // Text to navigate to Login Page
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // Arahkan ke halaman login
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Sudah punya akun? Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
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
