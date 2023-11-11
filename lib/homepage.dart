import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
          body: Stack(children: [
            ListView(
              scrollDirection: Axis.horizontal,
                children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 120),
                  child: Column(children: [
                    CircleAvatar(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 45,left: 55),
                        child: TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Scaffold();
                          },));

                        },child: Icon(Icons.add_circle, size: 30, color: Colors.black),)
                      ),
                        radius: 45,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(height: 15),
                    Text('Your Story')
                  ],),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 20,top: 120),
                  child: Column(children: [

                    CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('image/chris.jpg')
                    ),
                    SizedBox(height: 15),
                    Text('Chris He..')
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,top: 120),
                  child: Column(children: [
                    CircleAvatar(

                        radius: 45,
                        backgroundImage: AssetImage('image/rock.jpg')
                    ),
                    SizedBox(height: 15),
                    Text('Rock')
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,top: 120),
                  child: Column(children: [
                    CircleAvatar(

                        radius: 45,
                        backgroundImage: AssetImage('image/ronaldo.webp')
                    ),
                    SizedBox(height: 15),
                    Text('ronaldo')
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,top: 120),
                  child: Column(children: [
                    CircleAvatar(

                        radius: 45,
                        backgroundImage: AssetImage('image/niklas.jpg')
                    ),
                    SizedBox(height: 15),
                    Text('niklas ch..')
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,top: 120),
                  child: Column(children: [
                    CircleAvatar(

                        radius: 45,
                        backgroundImage: AssetImage('image/selena.jpg')
                    ),
                    SizedBox(height: 15),
                    Text('selena go..')
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,top: 120),
                  child: Column(children: [
                    CircleAvatar(

                        radius: 45,
                        backgroundImage: AssetImage('image/zayn.jpg')
                    ),
                    SizedBox(height: 15),
                    Text('zayn')
                  ],),
                ),
              ],)

            ]),
            Padding(
              padding: const EdgeInsets.only(top: 55,left: 30),
              child: Image.asset('image/instagam_written.png',height: 40,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 47,left: 215),
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Scaffold();
                },));
              }, child: Icon(Icons.add_circle_outline,size: 28),style: ButtonStyle(iconColor:
              MaterialStatePropertyAll(Colors.black))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 47,left: 265),
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Scaffold();
                },));
              }, child: Image.asset('image/heart.png',height: 26,)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 47,left: 315),
              child: TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Scaffold();
                },));
              }, child: Image.asset('image/send.png',height: 28,)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 275,left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(child:
                  Column(children: [
                    Row(children: [CircleAvatar(backgroundImage: AssetImage('image/zayn.jpg'),radius: 22),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text('zayn',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,
                      letterSpacing: 2),),
                    ),
                      Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: Image(image: AssetImage('image/threedoticon.png'),height: 20),
                    )]),
                    Padding(
                      padding: const EdgeInsets.only (top: 8.0,right: 20),
                      child: Container(child: Image.asset('image/zayn-malik-vogue.webp',height: 600,width: 470,fit: BoxFit.cover),),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 320.0),
                        child: TextButton(onPressed: () {
                        }, child: Image.asset('image/heart.png',height: 30,)),
                      ),
                    ),


                    Column(children: [Container(height: 200,width: 40,color: Colors.transparent,)],)

                    ]),),
              ),
            ),
            Divider(color: Colors.black,height: 525,indent: 1,),

          ]),


    ));
  }
}
