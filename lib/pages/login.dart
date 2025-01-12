import 'package:flutter/material.dart';
import 'register.dart'; // Import halaman Register

class Login extends StatelessWidget {
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
                          "Login",
                          style: TextStyle(
                            fontFamily: 'SpicyRice',
                            fontSize: 40, // Increased font size
                            fontWeight: FontWeight.w900, // Extra bold
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20), // Increased space between title and description
                        Text(
                          "Masukkan akun yang tepat dan pastikan\ntidak melakukan kesalahan ya.",
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
                      hintText: "Masukkan email",
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
                      hintText: "Masukkan password",
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
                        "Lupa password?",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan fungsi untuk proses login
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
                    child: Text("Login"),
                  ),

                  // Text to navigate to Register Page
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // Arahkan ke halaman register
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text(
                      "Belum punya akun? Register",
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
