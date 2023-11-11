import 'package:flutter/material.dart';
import 'saveyourlogininfo.dart';
class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
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
            ),elevation: 3,flexibleSpace: Image.asset('image/a415b01f1144854b54b84f999938f219.jpg',fit:
            BoxFit.cover,)),
            body: Stack(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 25,left: 20),
                  child: Text("Create Password",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w900
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75,left: 20),
                  child: Text('Create a password with at least 6 letters or\n'
                      'numbers.It should be something that others\n'
                      'cant guess.',style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160,left:20,right:20),
                  child: TextField(obscureText: true,
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
                      ) ,labelText: 'Password',
                      hintText: 'Password'
                        ,hintStyle: TextStyle(letterSpacing: 3)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 240,left: 20,right: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return saveyourlogin_info();
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
