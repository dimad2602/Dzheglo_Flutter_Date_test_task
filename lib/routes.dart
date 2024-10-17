import 'package:dzheglo_flutter_date_test_task/pages/chats_page/current_chat_page.dart';
import 'package:dzheglo_flutter_date_test_task/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext context)> routes = {
  '/': (BuildContext context) => const HomePage(),
  '/CurrentChat': (BuildContext context) => CurrentChatPage(),
};
