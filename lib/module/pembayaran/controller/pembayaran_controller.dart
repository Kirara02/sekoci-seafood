import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/pembayaran_view.dart';

class PembayaranController extends State<PembayaranView> implements MvcController {
  static late PembayaranController instance;
  late PembayaranView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List bankList = [
    'assets/images/bca.png',
    'assets/images/mandiri.png',
    'assets/images/bni.png',
  ];
}