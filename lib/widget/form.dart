import 'package:flutter/material.dart';

class AppForm extends StatefulWidget {
  // Required for form validations
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Handles text onchange
  TextEditingController nameController;
  TextEditingController ageController;

  AppForm({this.formKey, this.nameController, this.ageController});

  @override
  _AppFormState createState() => _AppFormState();
}

class _AppFormState extends State<AppForm> {
  String _validateName(String value) {
    if (value.length < 3) return 'Nama harus lebih dari 3 karakter';
    return null;
  }

  String _validateAge(String value) {
    Pattern pattern = r'(?<=\s|^)\d+(?=\s|$)';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) return 'Nomer harus berupa angka tanpa spasi dan simbol';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidate: true,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: widget.nameController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(labelText: 'Nama'),
            validator: _validateName,
          ),
          TextFormField(
            controller: widget.ageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'No. Telp'),
            validator: _validateAge,
          ),
        ],
      ),
    );;
  }
}