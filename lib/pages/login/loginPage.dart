import 'package:flutter/material.dart';

import '../periodes/periodePage.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            _logo(),
            SizedBox(height: 50),
            _titreText(),
            SizedBox(height: 20),
            _usernameField(),
            SizedBox(height: 10),
            _passwordField(),
            SizedBox(height: 30),
            _validerBtn(context)
          ],
        )
      )


    );
  }

  Widget _logo(){
    return   Container(
      padding: const EdgeInsets.only(top:50),
      child: Image.network("https://t3.ftcdn.net/jpg/06/14/84/58/"
          "360_F_614845842_pNcPaSxVwBiO6hGaaSXKrQOCs6xqnijX.jpg",
        width: 250,
      ),
    );
  }

  Widget _titreText(){
    return Text("Authentification",
      style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),);
  }

  Widget _usernameField(){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Nom d'utilisateur",
        prefixIcon: Icon(Icons.verified_user)
      )
    );
  }

  Widget _passwordField(){
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Mot de passe",
            prefixIcon: Icon(Icons.password),
            suffixIcon: Icon(Icons.visibility_off)
        )
    );
  }

  Widget _validerBtn(BuildContext context){
    return   Container(
        width: double.infinity,
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 0),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 0),
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white
          ),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder:(ctx)=> PeriodePage() ));
          },
          icon: Icon(Icons.check),
          label: const Text('Demarrer', style:TextStyle(fontSize: 20)),
        )
    );
  }

}