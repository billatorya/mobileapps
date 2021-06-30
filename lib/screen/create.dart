import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../widget/env.var.dart';
import '../widget/form.dart';

class Create extends StatefulWidget {
  final Function refreshUserList;

  Create({this.refreshUserList});

  @override
  _CreateState createState() => _CreateState();
}

class _CreateState extends State<Create> {
  // Required for form validations
  final formKey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController namaController = new TextEditingController();
  TextEditingController notelpController = new TextEditingController();

  // Http post request to create new data
  Future _createUser() async {
    return await http.post(
      "${Env.url_prefix}/add.php",
      body: {
        "Nama": namaController.text,
        "No. Telp": notelpController.text,
      },
    );
  }

  void _onConfirm(context) async {
    await _createUser();

    // Remove all existing routes until the Home.dart, then rebuild Home.
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          child: Text("CONFIRM"),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            if (formKey.currentState.validate()) {
              _onConfirm(context);
            }
          },
        ),
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.all(20),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(12),
            child: AppForm(
              formKey: formKey,
              namaController: namaController,
              notelpController: notelpController,
            ),
          ),
        ),
      ),
    );
  }
}