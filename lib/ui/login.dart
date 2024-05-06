import 'package:flutter/material.dart'; // pernyataan impor yang mengimpor paket flutter/material.dart.

class Login extends StatefulWidget {
  //Kelas ini akan digunakan untuk membangun tampilan halaman login dalam aplikasi.
  const Login({Key? key})
      : super(key: key); //Ini adalah konstruktor kelas Login.

  @override //anotasi yang menandakan bahwa metode yang mengikuti ini akan menggantikan (override) metode dengan nama yang sama dari kelas induk.
  _LoginState createState() =>
      _LoginState(); //digunakan untuk membuat instance dari kelas _LoginState, yang merupakan kelas yang mengelola keadaan (state) dari widget Login.
}

class _LoginState extends State<Login> {
  //Kelas ini bertanggung jawab untuk mengelola keadaan (state) dari widget Login.
  final _formKey = GlobalKey<
      FormState>(); // digunakan untuk mengakses dan memanipulasi status dan data yang terkait dengan form.
  final _usernameCtrl =
      TextEditingController(); //digunakan untuk mengontrol input teks pada field username.

  final _passwordCtrl =
      TextEditingController(); //digunakan untuk mengontrol input teks pada field password.

  @override
  Widget build(BuildContext context) {
    // metode build yang menggantikan metode build dari kelas _LoginState.
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Admin",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 50),
                Center(
                  child: Form(
                    key: _formKey,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(
                        children: [
                          _usernameTextField(),
                          SizedBox(height: 20),
                          _passwordTextField(),
                          SizedBox(height: 40),
                          _tombolLogin(), //ini adalah pemanggilan metode _tombolLogin() yang mengembalikan widget Container yang berisi tombol login.
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _usernameCtrl,
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password"),
      obscureText: true,
      controller: _passwordCtrl,
    );
  }

  Widget _tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        child: Text("Login"),
        onPressed: () {},
      ),
    );
  }
}
