import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Dynamic Profile UI"),
        ),
        body: ProfileScreen(),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/rica.jpg'),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rica Mariz A. Gudito",
                      style: TextStyle(
                          fontSize: 24,color:Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Flutter Software Engineer & Developer",
                      style: TextStyle(
                          fontSize: 17, color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          "Bohol, Philippines",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
        
          Row(
            children: [
              Expanded( 
                child: ElevatedButton(
                  onPressed: () {
                    print("Someone followed you!!!");
                  },
                  child: Text(
                    "Follow",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              
              SizedBox(width: 16), 
              
              Expanded( 
                child: ElevatedButton(
                  onPressed: () {
                    print("Someone messaged you!!!");
                  },
                  child: Text(
                    "Message",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          SizedBox(height: 24),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent sit amet eros in orci luctus accumsan.",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
