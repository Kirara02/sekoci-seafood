import 'package:flutter/material.dart';
import 'package:zen_test/core.dart';
import 'package:zen_test/shared/theme/theme_config.dart';
import '../controller/main_navigation_controller.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: whiteColor,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 60,
              ),
              const SizedBox(
                width: 5.0,
              ),
              Image.asset(
                "assets/images/sekoci_text.png",
                width: 150,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Badge(
                label: const Text(
                  "4",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                child: Image.asset(
                  "assets/icons/cart.png",
                  width: 22,
                ),
              ),
            ),
          ],
        ),
        body: IndexedStack(
          index: controller.selectedIndex,
          sizing: StackFit.expand,
          children: const [
            HomeView(),
            MenusView(),
            PesananView(),
            ProfileView(),
            FavoriteView(),
            CartView(),
          ],
        ),
        floatingActionButton: ClipOval(
          child: FloatingActionButton(
            backgroundColor: primaryColor,
            onPressed: () {},
            child: Image.asset(
              "assets/icons/favorite.png",
              width: 24,
              color: whiteColor,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        resizeToAvoidBottomInset: false,
        extendBody: true,
        extendBodyBehindAppBar: true,
        drawerEnableOpenDragGesture: false,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(12),
          ),
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            clipBehavior: Clip.antiAlias,
            notchMargin: 6,
            padding: const EdgeInsets.all(0),
            height: 60,
            child: BottomNavigationBar(
              elevation: 0,
              currentIndex: controller.selectedIndex,
              onTap: (newIndex) => controller.updateIndex(newIndex),
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 12,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/home.png',
                    width: 20,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/menu.png',
                    width: 16,
                  ),
                  label: "Menu",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/pesanan.png',
                    width: 20,
                  ),
                  label: "Pesanan",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/profil.png',
                    width: 16,
                  ),
                  label: "Profil",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
