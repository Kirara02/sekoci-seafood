import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/menus_view.dart';

class MenusController extends State<MenusView> implements MvcController {
  static late MenusController instance;
  late MenusView view;

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