import 'package:dzheglo_flutter_date_test_task/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dzheglo_flutter_date_test_task/pages/chats_page/chats_page.dart';
import 'package:dzheglo_flutter_date_test_task/pages/likes_page/likes_page.dart';
import 'package:dzheglo_flutter_date_test_task/pages/profile_page/profile_page.dart';
import 'package:dzheglo_flutter_date_test_task/pages/setting_page/setting_page.dart';
import 'package:flutter_svg/svg.dart';


class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'lib/assets/icons/flower_icon.svg',
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.selectedIconColor,
        unselectedItemColor: AppColors.purpleColor,
        backgroundColor: AppColors.buttonNavigationBarColor,
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return const ProfilePage();
      case 1:
        return const ChatsPage();
      case 2:
        return const LikesPage();
      case 3:
        return const SettingsPage();
      default:
        return const ChatsPage();
    }
  }
}
