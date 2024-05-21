import 'dart:async';
import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_app_daily_task/utils/List.dart';

import 'invoice.dart';

class PdfInvoice extends StatefulWidget {
  const PdfInvoice({super.key});

  @override
  State<PdfInvoice> createState() => _PdfInvoiceState();
}

class _PdfInvoiceState extends State<PdfInvoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build : (format) => generatePdf(),
      ),
    );
  }
}


