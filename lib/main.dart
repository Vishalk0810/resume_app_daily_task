import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_app_daily_task/invoice/component/invoice.dart';
import 'package:resume_app_daily_task/routes.dart';

import 'invoice/component/pdf.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/pdf',
      routes: {
        '/'  :(context) => Invoice(),
    '/pdf'  :(context) => PdfInvoice(),
      }
    );
  }
}