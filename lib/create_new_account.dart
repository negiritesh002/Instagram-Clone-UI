import 'package:flutter/material.dart';
import 'password.dart';
class createnew_account extends StatefulWidget {
  const createnew_account({Key? key}) : super(key: key);

  @override
  State<createnew_account> createState() => _createnew_accountState();
}

class _createnew_accountState extends State<createnew_account> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
        'image/a415b01f1144854b54b84f999938f219.jpg'),fit: BoxFit.cover),
    ),
    child: Scaffold(
    backgroundColor: Colors.transparent,
      appBar: AppBar(iconTheme: IconThemeData(
        color: Colors.black54
      ),elevation: 03,flexibleSpace: Image.asset('image/a415b01f1144854b54b84f999938f219.jpg',fit:
        BoxFit.cover,)),
      body: Stack(
        children: [

      Padding(
      padding: const EdgeInsets.only(top: 25,left: 20),
      child: Text("What's your name?",style: TextStyle(
        fontSize: 30,fontWeight: FontWeight.w900
      )),
    ),
          Padding(
            padding: const EdgeInsets.only(top: 100,left:20,right:20),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(borderRadius:
                BorderRadius.circular(15),borderSide: BorderSide(
                    color: Colors.black54,width: 2,strokeAlign: BorderSide.strokeAlignCenter
                )
                ) ,
                enabledBorder : OutlineInputBorder(borderRadius:
                BorderRadius.circular(15),borderSide: BorderSide(
                    color: Colors.black54,width: 2,strokeAlign: BorderSide.strokeAlignCenter
                )
                ) ,labelText: 'Full name',
                hintText: 'Full Name',),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180,left: 20,right: 20),
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return password();
              },));
            },style:  ButtonStyle(minimumSize:MaterialStatePropertyAll(Size(double.infinity, 45))
                ,backgroundColor: MaterialStatePropertyAll(Colors.black),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:
                BorderRadius.all(Radius.circular(20)))
    )
    ),
                child: Text('Next',style: TextStyle(fontSize: 18,letterSpacing: 5),)),

          ),],
      )));
  }
}
