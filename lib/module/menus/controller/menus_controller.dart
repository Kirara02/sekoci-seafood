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

  List listMenu = [
    {
      'imgUrl': "assets/images/lobster_goreng.png",
      'title': "Lobster Goreng",
      'subtitle': "Dengan Saus Mentega",
      'description':
          "Dapatkan Lobster Goreng Saus Mentega yang Terbuat dari Bahan Baku LOBSTER AIR LAUT 100% SEGAR, yang Rendah Kolestrol (Jika Dibandingkan dengan Lobster Air Tawar)\nKini Anda dan Keluarga Tidak Perlu Takut untuk Makan Seafood yang Rendah Kolesterol, dengan Harga Terjangkau Serta Rasa Mewah Ala Restoran.",
      'price': "Rp 100.000",
      'badge': "Diskon 20%",
      'rating': 4.5,
    },
    {
      'imgUrl': "assets/images/kepiting_rebus.png",
      'title': "Kepiting Rebus",
      'subtitle': "Dengan Saus Pedas",
      'description':
          "Nikmati sensasi kepiting rebus yang segar dan kenikmatan saus pedas yang memukau. Dibuat dengan bahan-bahan berkualitas tinggi dan disajikan dengan porsi yang cukup untuk memuaskan selera Anda.",
      'price': "Rp 70.000",
      'badge': "Paling Populer",
      'rating': 4.7,
    },
    {
      'imgUrl': "assets/images/udang_goreng_tepung.png",
      'title': "Udang Goreng Tepung",
      'subtitle': "Dengan Saus Spesial",
      'description':
          "Nikmati kelezatan Udang Goreng Tepung dengan tekstur renyah di luar dan lembut di dalam. Disajikan dengan saus spesial yang memberikan sentuhan rasa yang menggugah selera. Terbuat dari udang segar pilihan yang diolah dengan sempurna untuk memastikan cita rasa yang tak terlupakan.",
      'price': "Rp 50.000",
      'badge': "Extra 20%",
      'rating': 4.2,
    },
    {
      'imgUrl': "assets/images/jus_jeruk.png",
      'title': "Jus Jeruk",
      'subtitle': "Dari Jeruk Pilihan",
      'description':
          "Nikmati kesegaran dan kelezatan jus jeruk segar yang terbuat dari jeruk pilihan terbaik. Dipersembahkan dengan proses perasan yang hati-hati untuk menjaga kualitas rasa dan nutrisi alami dari jeruk. Minuman yang sempurna untuk menyegarkan diri Anda di setiap kesempatan.",
      'price': "Rp 10.000",
      'badge': "",
      'rating': 4.0,
    },
  ];
}
