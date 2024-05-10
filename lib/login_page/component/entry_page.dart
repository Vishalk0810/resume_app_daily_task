import 'package:flutter/material.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Image.asset('assets/Images/img1.png'),
          SizedBox(height: 130,),
          Text('Buil Awesome Apps',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),),
          Text('Lets put your creativity on the',style: TextStyle(
            fontSize: 17,
          ),),
          Text('development Highway.',style: TextStyle(
            fontSize: 17,
          ),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(width: 1,color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('LOGIN',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),)),
                ),
              ),

              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 1,color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text('SIGNUP',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),)),
              ),
            ],
          )
        ],
      ),
    );
  }
}