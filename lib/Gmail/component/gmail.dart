import 'package:flutter/material.dart';

import '../../utils/List.dart';

class Gmail extends StatefulWidget {
  const Gmail({super.key});

  @override
  State<Gmail> createState() => _GmailState();
}

class _GmailState extends State<Gmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: DrawerHeader(child: Text(
                  'Gmail',style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),
            ),
            ...List.generate(TitleList.length, (index) => buildListTile(index: index),),
          ],
        ),
      ),
      appBar: AppBar(),
    );
  }

  ListTile buildListTile({required int index}) {
    return ListTile(
            leading: Icon(IconList[index],color: Colors.white,size: 27,),

            title: Text(TitleList[index],style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 22
            )),
          );
  }
}
