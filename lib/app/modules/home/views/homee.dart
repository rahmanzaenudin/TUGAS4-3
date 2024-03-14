import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getclii/app/modules/home/views/masuk.dart';

class homee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Masukk());
            },
            icon: Icon(
              Icons.close,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.account_circle,
                size: 150,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'RAHMAN ZAENUDIN',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Group : 1b',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'MSIB : LearningX',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'UNIVERSITAS BINA SARANA INFORMATIKA',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
