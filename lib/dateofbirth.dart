import 'package:flutter/material.dart';
import 'package:log_in_page/crate_a_username.dart';
class date_of_birth extends StatefulWidget {
  const date_of_birth({Key? key}) : super(key: key);

  @override
  State<date_of_birth> createState() => _date_of_birthState();
}

class _date_of_birthState extends State<date_of_birth> {
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
                  child: Text("What's your date of birth",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w900
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75,left: 20),
                  child: Text("Use your own date of birth, even if this account\n"
                      "is for a business, a pet or somthing else. No one\n"
                      "will see this unless you choose to share it. ",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 160,left:20,right:20),
                  child: TextField(
                    keyboardType: TextInputType.datetime,
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
                        ) ,labelText: "Birth Date",
                        hintText: "Birth date"
                        ,hintStyle: TextStyle(letterSpacing: 4)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 240,left: 20,right: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return username();
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
