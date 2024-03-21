import 'package:flutter/material.dart';


void main()=>runApp(MaterialApp(
home:NinjasCard(),
));

class NinjasCard extends StatefulWidget {
  const NinjasCard({super.key});


  @override
  State<NinjasCard> createState() => _NinjasCardState();
}

class _NinjasCardState extends State<NinjasCard> {

  int ninjalevel=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar:AppBar(
        title:Text('Ninja ID Card'),
        centerTitle:true,
        backgroundColor: Colors.red,
        elevation:0,
      ),

      body:Padding(
        padding:EdgeInsets.fromLTRB(30,40,30,0),
        child:Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children:<Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/girl5.jpg'),
                radius:40.0,
              ),
            ),
           Divider(
             height:60.0,
             color:Colors.grey,
           ),
           Text(
             'Name',
             style:TextStyle(
               color:Colors.deepOrange,
               letterSpacing:1,
             ),
           ) ,
      Text('Binitha Babu',
      style:TextStyle(
        color:Colors.deepOrange,
        letterSpacing: 1,
        fontSize:25.0,
        fontWeight:FontWeight.bold,
      )
      ),
            SizedBox(height:30.0),
            Text('CURRENT NINJA LEVEL',
            style:TextStyle(
              color:Colors.grey,
              letterSpacing:2.0,
            )
            ),
            Text('$ninjalevel',
                style:TextStyle(
                  color:Colors.deepOrange,
                  letterSpacing:2.0,
                  fontSize:25
                )
            ),
            SizedBox(height:30.0),
            Row(children:<Widget>[
              Icon(
              Icons.email,
              color:Colors.grey,

              ),
              SizedBox(width:10),
              Text('binithababu184@gmail.com',
              style:TextStyle(
                color:Colors.grey,
                fontSize:20,
              ),
              ),
            ]
            )
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            ninjalevel += 1;
          });
        },
        child:Icon(Icons.add),
        backgroundColor: Colors.red[200],
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}


