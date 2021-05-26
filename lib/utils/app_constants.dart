import 'dart:ui';
import 'package:EnigmaAssignement/ui/bill_details/ui_model.dart';
import 'package:flutter/material.dart';

class Constants {
  static const APP_TITLE = "Title";
  static int SNACKBAR_SHOW_TIME = 3;
  static const ZERO_DIMEN = 0.0;

  List<BillDetailsUiModel> billDetails = [
    BillDetailsUiModel(header: 'Last Month Charges :', details: '£ 2000.00'),
    BillDetailsUiModel(header: 'What you paid :', details: '2021.09.01'),
    BillDetailsUiModel(header: 'How you paid :', details: 'DD'),
    BillDetailsUiModel(header: 'Unpaid Balance :', details: '£ 0.00'),
    BillDetailsUiModel(header: 'Monthly Consumption :', details: '307.64 KWH'),
    BillDetailsUiModel(
        header: 'Cost of Energy Used(Excluding VAT) :', details: '£ 41.95'),
    BillDetailsUiModel(header: 'VAT at 5% :', details: '£ 2.95'),
    BillDetailsUiModel(header: 'Sub TOtal Including VAT :', details: '£ 44.95'),
    BillDetailsUiModel(header: 'TOTAL AMOUNT DUE :', details: '£ 44.95'),
  ];
}
