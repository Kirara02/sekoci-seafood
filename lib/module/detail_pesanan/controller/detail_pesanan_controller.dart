import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/detail_pesanan_view.dart';

class DetailPesananController extends State<DetailPesananView> implements MvcController {
  static late DetailPesananController instance;
  late DetailPesananView view;

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