import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/profile_unauth_view.dart';

class ProfileUnauthController extends State<ProfileUnauthView> implements MvcController {
  static late ProfileUnauthController instance;
  late ProfileUnauthView view;

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