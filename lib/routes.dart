import 'package:dzheglo_flutter_date_test_task/pages/chats_page/current_chat_page.dart';
import 'package:dzheglo_flutter_date_test_task/pages/navigation_page/navigation_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext context)> routes = {
  '/': (BuildContext context) => const NavigationPage(),
  '/CurrentChat': (BuildContext context) => const CurrentChatPage(),
};
