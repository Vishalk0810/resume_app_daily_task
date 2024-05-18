import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/registration_form_and_id_card/component/registration_form.dart';
import 'package:resume_app_daily_task/utils/List.dart';

import '../../Circle_avatar/component/circle_avtar.dart';

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Id_Card',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        leading: Icon(Icons.menu),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: Stack(
              children: [
                Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                Positioned(
                  top: 100,
                  left: 130,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        (fileImage != null) ? FileImage(fileImage!) : null,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Text(
              'Name :-',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.black),
            ),
            title: Text(
              '$firstName $lastName',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: Text(
              'Contact :-',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.black),
            ),
            title: Text(
              '$contact',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: Text(
              'D.O.B :-',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.black),
            ),
            title: Text(
              '$dob',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: Text(
              'Email :-',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.black),
            ),
            title: Text(
              '$email',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: Text(
              'Address :-',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.black),
            ),
            title: Text(
              '$address',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: Text(
              'Gender :-',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
                  color: Colors.black),
            ),
            title: Text(
              gender,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          ListTile(
              leading: Text(
                'Hobby :-',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Colors.black),
              ),
              title: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        hobbySelected.length,
                        (index) => Row(
                              children: [
                                Text(
                                  '${hobbySelected[index]}',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                              ],
                            ))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
