import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/List.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

ImagePicker imagePicker = ImagePicker();
File? fileImage;
GlobalKey<FormState> formkey = GlobalKey();
TextEditingController txtName = TextEditingController();
TextEditingController txtSurname = TextEditingController();
TextEditingController txtContact = TextEditingController(text: '+91 ');
TextEditingController txtEmail = TextEditingController();
TextEditingController txtAddress = TextEditingController();

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.white),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Inforamtion',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: Icon(
          Icons.menu,
          size: 20,
        ),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CircleAvatar(
                  radius: 70,
                  backgroundImage:
                      (fileImage != null) ? FileImage(fileImage!) : null,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () async {
                          XFile? xFileImage = await imagePicker.pickImage(
                              source: ImageSource.camera);
                          setState(() {
                            fileImage = File(xFileImage!.path);
                          });
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          size: 40,
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
                          size: 40,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 170,
                        child: buildTextFormField(
                          hint: 'First Name',
                          lable: 'Name',
                          Controler: txtName,
                          keyboardtype: TextInputType.name,
                          maxlines: 1,
                        )),
                    SizedBox(
                        width: 170,
                        child: buildTextFormField(
                          hint: 'Last Name',
                          lable: 'Surname',
                          Controler: txtSurname,
                          keyboardtype: TextInputType.name,
                          maxlines: 1,

                        )),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                buildTextFormField(
                  hint: 'Contact no',
                  lable: 'Phone no',
                  Controler: txtContact,
                  keyboardtype: TextInputType.number,
                  maxlines: 1,
                ),
                SizedBox(height: 10,),
                buildTextFormField(
                  hint: 'E-mail',
                  lable: 'E-mail',
                  Controler: txtEmail,
                  keyboardtype: TextInputType.text,
                  maxlines: 1,
                ),
                SizedBox(height: 10,),
                buildTextFormField(
                  hint: 'Address',
                  lable: 'Address',
                  Controler: txtAddress,
                  keyboardtype: TextInputType.text,
                  maxlines: 4,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Gender :-',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                buildRadioListTile(
                  Gender: 'male',
                ),
                buildRadioListTile(
                  Gender: 'Female',
                ),
                buildRadioListTile(
                  Gender: 'Others',
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Hobby :-',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                buildCheckboxListTile(index: 0),
                buildCheckboxListTile(index: 1),
                buildCheckboxListTile(index: 2),

                // Container(
                //   height: 50,
                //   width: 360,
                //   decoration: BoxDecoration(
                //     color: Colors.cyan,
                //   ),
                //   child: Center(
                //     child: Text(
                //       'Uplode',
                //       style: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.w600,
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }

  CheckboxListTile buildCheckboxListTile({required int index}) {
    return CheckboxListTile(
      value: hobby[index],
      onChanged: (value) {
        setState(() {
          hobby[index] = value!;
        });
      },
      title: Text(hobbyType[index]),
    );
  }

  RadioListTile<String> buildRadioListTile({required Gender}) {
    return RadioListTile(
      value: Gender,
      groupValue: gender,
      onChanged: (value) {
        setState(() {
          gender = value!;
        });
      },
      title: Text(Gender),
    );
  }

  TextFormField buildTextFormField(
      {required String hint,
      required String lable,
      required keyboardtype,
      required Controler,
      required maxlines}) {
    return TextFormField(
      controller: Controler,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(width: 2)),
        focusColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 1.5),
        ),
        labelText: lable,
        labelStyle: TextStyle(fontSize: 18, color: Colors.black),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 17,
        ),
      ),
      cursorColor: Colors.black,
      keyboardType: keyboardtype,
      maxLines: maxlines,
    );
  }
}
