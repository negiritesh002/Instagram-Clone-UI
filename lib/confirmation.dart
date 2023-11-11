import 'package:flutter/material.dart';
import 'package:log_in_page/policy.dart';
class confirmation extends StatefulWidget {
  const confirmation({Key? key}) : super(key: key);

  @override
  State<confirmation> createState() => _confirmationState();
}

class _confirmationState extends State<confirmation> {
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
                  child: Text("Enter the Confirmation Code.",style: TextStyle(
                      fontSize: 30,fontWeight: FontWeight.w900
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 115,left: 20),
                  child: Text("To confirm your account enter \n"
                      "the 6 digit code that we sent to\n"
                      "**********322@gmail.com ",style: TextStyle(
                      fontSize: 16,fontWeight: FontWeight.w500
                  )),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 185,left:20,right:20),
                  child: TextField(
                    keyboardType: TextInputType.number,
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
                        ) ,labelText: "Confirmation Code",
                        hintText: "Confirmation Code"
                        ,hintStyle: TextStyle(letterSpacing: 4)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 280,left: 20,right: 20),
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return policy();
                    },));
                  }, style:  ButtonStyle(minimumSize:MaterialStatePropertyAll(Size(double.infinity, 45))
                      ,backgroundColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:
                      BorderRadius.all(Radius.circular(20)))
                      )
                  ),
                      child: Text('Next',style: TextStyle(fontSize: 18,letterSpacing: 5),)),

                ),
                Padding(
                    padding: const EdgeInsets.only(top: 340,left: 20,right: 20),
                    child: OutlinedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return confirmation() ;
                      },));
                    }, style: ButtonStyle(
                      side: MaterialStatePropertyAll(BorderSide(color: Colors.blue)),
                      minimumSize: MaterialStatePropertyAll(Size(double.infinity,45)),
                    ),child:Text("I didn't receive the code",style: TextStyle(fontWeight: FontWeight.w500)),)),
              ],
            )));
  }
}
