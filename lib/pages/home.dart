import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Player",style:TextStyle(color:Colors.blue)),
        leading: Icon(Icons.menu,color: Colors.blue),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search,color: Colors.blue),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert,color: Colors.blue),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 15,),
          Center(
            child: Text("Pay Your Bills",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 7,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              suix(
                icn: Icons.water_drop_outlined,
                name: "ELECTIRIC",
              ),
              suix(
                icn: Icons.water_drop_outlined,
                name: "WATER",
              ),
              suix(
                icn: Icons.phone_android,
                name: "MOBILE",
              ),

            ],
          ),
          SizedBox(height: 3,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              suix(
                icn: Icons.phone,
                name: "LANDLINE",
              ),
              suix(
                icn: Icons.live_tv,
                name: " TV CABLE",
              ),
              suix(
                icn: Icons.edit,
                name: "INTERNET",
              ),

            ],
          ),
          SizedBox(height: 20,),
          Center(
            child: Text("Pay Your Bills",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              suix(
                icn: Icons.local_movies_sharp,
                name: "MOVIE",
              ),
              suix(
                icn: Icons.event,
                name: "EVENT",
              ),
              suix(
                icn: Icons.directions_bike_outlined,
                name: "SPORT",
              ),

            ],
          ),
        ],
      ),
    );
  }

  Widget suix({icn,name}){
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(3),
        // padding: EdgeInsets.all(8),
        height: 100,
        width: 100,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icn,color: Colors.blue),
            Text(name)
          ],
        ),
      ),
    );
  }
}
