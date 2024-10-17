import 'package:dzheglo_flutter_date_test_task/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:dzheglo_flutter_date_test_task/pages/chats_page/chats_page.dart';
import 'package:dzheglo_flutter_date_test_task/pages/likes_page/likes_page.dart';
import 'package:dzheglo_flutter_date_test_task/pages/profile_page/profile_page.dart';
import 'package:dzheglo_flutter_date_test_task/pages/setting_page/setting_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBlackColor, // Темный фон
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '', // Убираем подпись
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: '', // Убираем подпись
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '', // Убираем подпись
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: '', // Убираем подпись
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.selectedIconColor,
        unselectedItemColor: AppColors.unselectediconColor,
        backgroundColor:
            AppColors.buttonNavigationBarColor, // Цвет нижней панели
        onTap: _onItemTapped,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      body: _buildBody(), // Метод для отображения разных экранов
    );
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return const ProfilePage(); // Страница профиля
      case 1:
        return ChatsPage(); // Страница чатов
      case 2:
        return const LikesPage(); // Страница лайков
      case 3:
        return const SettingsPage(); // Страница настроек
      default:
        return ChatsPage(); // По умолчанию возвращается страница чатов
    }
  }
}
