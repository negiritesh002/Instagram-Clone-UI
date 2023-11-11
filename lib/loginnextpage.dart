import 'package:flutter/material.dart';
import 'package:log_in_page/homepage.dart';

class login_nextpage extends StatefulWidget {
  const login_nextpage({Key? key}) : super(key: key);

  @override
  State<login_nextpage> createState() => _login_nextpageState();
}

class _login_nextpageState extends State<login_nextpage> {
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
                  child: Text("Save this account",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w900
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 95,left: 20),
                  child: Text("Would you like To save this account then you\n"
                      "don't have to rewrite it again",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 170.0,left: 90),
                  child: CircleAvatar(backgroundColor: Colors.grey.shade100
                      ,radius: 100,child: Image.asset('image/profile.png',height: 150,)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 600,left: 20,right: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return homepage();
                    },));
                  }, style:  ButtonStyle(minimumSize:MaterialStatePropertyAll(Size(double.infinity, 45))
                      ,backgroundColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:
                      BorderRadius.all(Radius.circular(20)))
                      )
                  ),
                      child: Text('Save',style: TextStyle(fontSize: 18,letterSpacing: 5),)),

                ),
                Padding(
                    padding: const EdgeInsets.only(top: 660,left: 20,right: 20),
                    child: OutlinedButton(onPressed: () {
                      PageRouteBuilder(
                        transitionDuration: Duration(seconds: 2),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return ScaleTransition(scale: animation);
                        },
                        pageBuilder: (context, animation, secondaryAnimation) {
                        return homepage();
                      },);
                    }, style: ButtonStyle(
                      side: MaterialStatePropertyAll(BorderSide(color: Colors.blue)),
                      minimumSize: MaterialStatePropertyAll(Size(double.infinity,45)),
                    ),child:Text("Not now",style: TextStyle(fontWeight: FontWeight.w500)),)),
              ],
            )));
  }
}
