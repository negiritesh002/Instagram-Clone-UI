import 'package:flutter/material.dart';
import 'package:log_in_page/mobilenum.dart';
class username extends StatefulWidget {
  const username({Key? key}) : super(key: key);

  @override
  State<username> createState() => _usernameState();
}

class _usernameState extends State<username> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'image/a415b01f1144854b54b84f999938f219.jpg'),fit: BoxFit.cover),
        ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(iconTheme: IconThemeData(
                color: Colors.black54
            ),elevation: 3,flexibleSpace: Image.asset('image/a415b01f1144854b54b84f999938f219.jpg',fit:
            BoxFit.cover,)),
            body: Stack(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20),
                  child: Text("Create a Username",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w900
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75,left: 20),
                  child: Text("Add a username, \n"
                      "you can change this any time",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140,left:20,right:20),
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
                        ) ,labelText: "Username",
                        hintText: "Username"
                        ,hintStyle: TextStyle(letterSpacing: 4)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220,left: 20,right: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return mobnum();
                    },));
                  }, style:  ButtonStyle(minimumSize:MaterialStatePropertyAll(Size(double.infinity, 45))
                      ,backgroundColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:
                      BorderRadius.all(Radius.circular(20)))
                      )
                  ),
                      child: Text('Next',style: TextStyle(fontSize: 18,letterSpacing: 5),)),

                )],
            )));
  }
}
