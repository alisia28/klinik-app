import 'package:flutter/material.dart'; //mengimport
import '../widget/sidebar.dart';

class Beranda extends StatelessWidget {
  const Beranda({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(title: Text("Beranda FitriAlisia")),
      body: Center(
        child: Text("Selamat Datang Fitri Alisia"),
      ),
    );
  }
}
