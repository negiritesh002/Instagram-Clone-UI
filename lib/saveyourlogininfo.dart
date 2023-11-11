import 'package:flutter/material.dart';
import 'package:log_in_page/dateofbirth.dart';
class saveyourlogin_info extends StatefulWidget {
  const saveyourlogin_info({Key? key}) : super(key: key);

  @override
  State<saveyourlogin_info> createState() => _saveyourlogin_infoState();
}

class _saveyourlogin_infoState extends State<saveyourlogin_info> {
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
                  child: Text("Save your log in info?",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w900
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 75,left: 20),
                  child: Text('We will save the log info of your ID,\n'
                      'So you wont need to worry\n'
                      'next time you log in',style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 160,left: 20,right: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return date_of_birth();
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
                  padding: const EdgeInsets.only(top: 220,left: 20,right: 20),
                  child: OutlinedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return date_of_birth() ;
                    },));
                  }, style: ButtonStyle(
                    side: MaterialStatePropertyAll(BorderSide(color: Colors.blue)),
                    minimumSize: MaterialStatePropertyAll(Size(double.infinity,45)),
                  ),child:Text('Not now',style: TextStyle(fontWeight: FontWeight.w500)),)),
                ],
            )));
  }
}
