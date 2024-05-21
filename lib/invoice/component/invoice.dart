import 'dart:typed_data';
import 'package:flutter/material.dart';
import '../../utils/List.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/pdf');
          },
          child: Icon(Icons.picture_as_pdf),
        ),
        body: Column(
          children: [
            ...List.generate(
                invoiceList.length,
                (index) => ListTile(
                      title: Text(
                        'Name : ${invoiceList[index].name}',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      trailing: Text(
                        'price : ${invoiceList[index].price}',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        'Category : ${invoiceList[index].category}',
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) => pw.Column(
              children: [
                ...List.generate(
                    invoiceList.length,
                    (index) => pw.Text(
                        '\nName : ${invoiceList[index].name},\n Price : ${invoiceList[index].price},\nCategory : ${invoiceList[index].category}\n',
                        style: pw.TextStyle(fontSize: 25)))
              ],
            )),
  );
  return pdf.save();
}