

import 'package:flutter/material.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({super.key});

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  trysubmit(){
  final isvalid = _formKey.currentState!.validate();
  if(isvalid){
    _formKey.currentState!.save();
    submitform();
  } else{
    print('error');
  }
  }

  submitform(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forms'),),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child:  Column(children: [
                  TextFormField(
                  decoration: const  InputDecoration(hintText: 'First Name',
                  label: Text('Username')) 
                  ,key: ValueKey('firstname'),
                    validator:(value) {
                    if(value.toString().isEmpty){
                        return 'Plz Enter Details';
                    }
                    else{
                      return null;
                    }
                    },
                    onSaved:(value){
                    firstname = value.toString();
                    } ,
                  ),
              TextFormField(
                decoration: const  InputDecoration(hintText: 'lastName',
                    label: Text('LastName'))
                ,key: const ValueKey('lastname'),
                validator:(value) {
                  if(value.toString().isEmpty){
                    return 'Plz Enter Details';
                  }
                  else{
                    return null;
                  }
                },
                onSaved:(value){
                  lastname = value.toString();
                } ,
              ),
              TextFormField(
                decoration: const  InputDecoration(hintText: 'Email',
                    label: Text('Email'))
                ,key: const ValueKey('email'),
                validator:(value) {
                  if(value.toString().isEmpty){
                    return 'Plz Enter Details';
                  }
                  else{
                    return null;
                  }
                },
                onSaved:(value){
                  email = value.toString();
                } ,
              ),
              TextFormField(
                obscureText: true,
                decoration: const  InputDecoration(hintText: 'Password',
                    label: Text('Password'))
                ,key: const ValueKey('password'),
                validator:(value) {
                  if(value.toString().isEmpty){
                    return 'Plz Enter Details';
                  }
                  else{
                    return null;
                  }
                },
                onSaved:(value){
                  password = value.toString();
                } ,
              ),
              const SizedBox(height: 2),
              TextButton(onPressed: (){
                trysubmit();
              }, child: const Text('Submit'))
          ],),
          ),
        ),
      ),
    );
  }
}
