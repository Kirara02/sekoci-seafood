import 'package:flutter/material.dart';
import 'package:zen_test/state_util.dart';
import '../view/profile_view.dart';

class ProfileController extends State<ProfileView> implements MvcController {
  static late ProfileController instance;
  late ProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String selectedGender = 'Laki-laki';

  TextEditingController namaController =
      TextEditingController(text: 'John Doe');
  TextEditingController jkController = TextEditingController(text: '');
  TextEditingController nomorController =
      TextEditingController(text: '081234567890');
  TextEditingController emailController =
      TextEditingController(text: 'johndoe@gmail.com');
  TextEditingController alamatController = TextEditingController(
      text: 'Jl. Moch. Hatta Nomor 02, Cipedes, Tasikmalaya.');
}
