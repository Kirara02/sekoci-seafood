import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroudColor.withOpacity(0.3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => Get.back(),
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: blackColor,
                        size: 18,
                      ),
                    ),
                    const Text(
                      "Profil",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check,
                        size: 18,
                        color: primaryColor,
                      ),
                    )
                  ],
                ),
                const Divider(
                  color: primaryColor,
                  height: 0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: primaryColor,
                            width: 4,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/noir.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: whiteColor,
                                width: 2,
                              ),
                              color: primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: controller.namaController,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          "Nama",
                        ),
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jenis Kelamin",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: DropdownButton<String>(
                            value: controller.selectedGender,
                            icon: Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 24,
                                ),
                              ),
                            ), // Icon dropdown di sebelah kanan
                            iconSize: 24.0,
                            style: TextStyle(
                              color: blackColor,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                            ),
                            underline: Container(
                              height: 2.0,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black,
                                    width: 0.5, // Ketebalan underline
                                  ),
                                ),
                              ),
                            ),
                            onChanged: (newValue) {
                              controller.selectedGender = newValue as String;
                              controller.setState(() {});
                            },
                            items: <String>['Laki-laki', 'Perempuan']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: controller.nomorController,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          "Nomor HP",
                        ),
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: controller.emailController,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          "Email",
                        ),
                        labelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: controller.alamatController,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: const InputDecoration(
                        suffixIcon: Icon(
                          Icons.keyboard_arrow_right,
                        ),
                        label: Text(
                          "Alamat Utama Saya",
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                InkWell(
                  onTap: () => Get.to(const ProfileUnauthView()),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Keluar",
                            style: const TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: whiteColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Image.asset(
                            'assets/icons/logout.png',
                            width: 16,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
