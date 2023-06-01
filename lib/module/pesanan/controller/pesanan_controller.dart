import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/pesanan_view.dart';

class PesananController extends State<PesananView> implements MvcController {
  static late PesananController instance;
  late PesananView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}