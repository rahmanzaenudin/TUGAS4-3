import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getclii/app/modules/home/views/homee.dart';
import 'package:getclii/app/modules/home/views/masuk.dart';

class daftarr extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Masukk());
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Daftar',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nama Lengkap',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.blue[50],
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama Lengkap harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Alamat',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.blue[50],
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Alamat harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.blue[50],
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Username harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.blue[50],
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.blue[50],
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Konfirmasi Password harus diisi';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.to(homee());
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text('Daftar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
