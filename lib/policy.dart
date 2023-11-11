import 'package:flutter/material.dart';
import 'package:log_in_page/profile.dart';
class policy extends StatefulWidget {
  const policy({Key? key}) : super(key: key);

  @override
  State<policy> createState() => _policyState();
}

class _policyState extends State<policy> {
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
                  child: Text("Agree to instagram's terms and policies",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w900
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 125,left: 20),
                  child: Text("People who use our services may have uploaded\n"
                      "your contact information to instagram.",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180,left: 20),
                  child: Text("By tapping I agree, you agree to create an\n"
                      "account.",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 240,left: 20),
                  child: Text("The Privacy Policy describes the ways we can use\n"
                      "the information wwe collect when you create an \n"
                      "account. For example we use this information to\n"
                      "provide, personalise and improve our products,\n"
                      "including ads.",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 370,left: 20,right: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return profile();
                    },));
                  }, style:  ButtonStyle(minimumSize:MaterialStatePropertyAll(Size(double.infinity, 45))
                      ,backgroundColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:
                      BorderRadius.all(Radius.circular(20)))
                      )
                  ),
                      child: Text('I Agree',style: TextStyle(fontSize: 18,letterSpacing: 5),)),

                )],
            )));
  }
}
