import 'package:flutter/material.dart';
import 'package:log_in_page/create_new_account.dart';
import 'loginnextpage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLoginPage(),
  ));
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
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
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:150,top:20),
                child: Text('English(India)'),
              ),
              Padding(
                padding: const EdgeInsets.only(top:70,left: 130),
                child: Image(image: AssetImage('image/instagram_logo.png'),height: 125),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 220,left: 93),
                child: Image(image: AssetImage('image/instagam_written.png'),height: 65,),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top : MediaQuery.of(context).size.height * 0.4,
                    left: 20,
                    right: 20
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
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
                          ) ,labelText: 'Username, email address or mobile number',
                       hintText: 'Username, email address or mobile number',),
                      ),
                      SizedBox(height: 18,),
                      TextField(
                        obscureText: true ,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(borderRadius:
                          BorderRadius.circular(15),borderSide: BorderSide(
                              color: Colors.black54,width: 2,strokeAlign: BorderSide.strokeAlignCenter
                          )
                          ) ,
                          enabledBorder: OutlineInputBorder(borderRadius:
                          BorderRadius.circular(15),borderSide: BorderSide(
                              color: Colors.black54,width: 2,strokeAlign: BorderSide.strokeAlignCenter
                          )
                          ) ,labelText: 'Password',
                          hintText: 'Password',hintStyle: TextStyle(letterSpacing: 3)
                        ),
                      )
                    ],
                  ),
                ),
              ),
             Center(
               child: Padding(
                 padding: EdgeInsets.only(top : MediaQuery.of(context).size.height*0.6,left:20 ,right:20 ),
                 child: ElevatedButton(onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return  login_nextpage();
                   }));
                 }, child: Text('Log In'),
                 style:
                   ButtonStyle(minimumSize:MaterialStatePropertyAll(Size(double.infinity, 45))
                       ,backgroundColor: MaterialStatePropertyAll(Colors.black),
                 shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius:
                 BorderRadius.all(Radius.circular(20)))
                 )
                 ),)
               ),
             ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top : 560),
                  child: TextButton(onPressed: () {

                  }, child: Text('Forgotton Password?',style:
                    TextStyle(fontSize: 18,color: Colors.black),))
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 720,left: 20,right: 20),
                  child: OutlinedButton(
                      onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return createnew_account();
                    }));
                  }, child: Text('Create new account',style: TextStyle(
                    fontSize: 20,letterSpacing: 2,
                  )),
                  style: ButtonStyle(side: MaterialStatePropertyAll(BorderSide(
                    color: Colors.blue
                  )),minimumSize: MaterialStatePropertyAll(Size(
                    double.infinity,50),
                  ),)
                  ),
                ),
              ),
              Container(child: Center(child: Padding(
                padding: const EdgeInsets.only(top: 795,right: 40),
                child: Image.asset('image/images.png',height: 30),
              )),),
              Padding(
                padding: EdgeInsets.only(top:798,left: 50),
                child: Center(child: Container(child: Text('Meta',style: TextStyle(
                  fontSize: 20
                )),)),
              )
            ]),
        )));
  }
}
