import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../registration_form_and_id_card/component/registration_form.dart';

class Picker extends StatefulWidget {
  const Picker({super.key});

  @override
  State<Picker> createState() => _PickerState();
}

ImagePicker imagePicker = ImagePicker();

class _PickerState extends State<Picker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.white),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: Text('Image Picker'),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 350,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.cyan,
                  image: (fileImage != null)
                      ? DecorationImage(
                    fit: BoxFit.cover,
                          image: FileImage(fileImage!),
                        )
                      : null),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () async {
                    XFile? xFileImage =
                        await imagePicker.pickImage(source: ImageSource.camera);
                    setState(() {
                      fileImage = File(xFileImage!.path);
                    });
                  },
                  icon: Icon(
                    Icons.camera_alt,
                    size: 50,
                  )),
              IconButton(
                  onPressed: () async {
                    XFile? xFileImage = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {
                      fileImage = File(xFileImage!.path);
                    });
                  },
                  icon: Icon(
                    Icons.image,
                    size: 50,
                  ))
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.cyan,
            ),
            child: Center(
              child: Text(
                'Uplode',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
