import 'dart:ffi';

import 'package:flutter/material.dart';

List TitleList =[
  'All Inboxes','Inbox','Starred','Snoozed','Important','Sent','Drafts','All Mail','Spam','Trash','Create New','Settings'
];

List IconList=[
  Icons.all_inbox,Icons.inbox,Icons.star_border,Icons.watch_later_outlined,Icons.label_important_outline_rounded,Icons.send,Icons.drafts,Icons.mail_outline,Icons.error_outline_sharp,Icons.delete_forever,Icons.add,Icons.settings,
];

String gender = 'Male';

List<bool> hobby = [
  false,false,false
];

List hobbyType =[
  'Cricket','Football', 'Kabaddi',
];

String firstName = '';
String lastName = '';
String dob = '';
String contact = '';
String  email= '';
String address = '';
List hobbySelected = [];

List<InvoiceModel> invoiceList =[
  InvoiceModel(name: 'Lenovo Thinkpad P14s',price: '1,29,990',category: 'Laptop'),
  InvoiceModel(name: 'Lenovo ThinkBook 16',price: '40,990',category: 'Laptop'),
  InvoiceModel(name: 'Lenovo IdeaPad Slim 3',price: '33,990',category: 'Laptop'),
];

class InvoiceModel
{
  String? name;
  String? price;
  String? category;

  InvoiceModel({this.name,this.price,this.category});
}