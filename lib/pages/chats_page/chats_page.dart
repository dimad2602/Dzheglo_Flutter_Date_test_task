import 'package:dzheglo_flutter_date_test_task/components/sheets/incognito_sheet.dart';
import 'package:dzheglo_flutter_date_test_task/models/other_user/other_model.dart';
import 'package:dzheglo_flutter_date_test_task/models/user_model/user_model.dart';
import 'package:dzheglo_flutter_date_test_task/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  bool _switchValue = false;

  final User currentUser = const User(
    receivedLikes: 44,
  );

  List<OtherUser> otherUsers = [];

  // Список различных сообщений
  final List<String> lastMessages = [
    "Привет, как дела?",
    "Завтра встречаемся?",
    "Понял, спасибо!",
    "Не могу говорить сейчас",
    "Можно позже?",
    "Отправил тебе файлы.",
    "Увидимся позже.",
    "Отлично, спасибо!"
  ];

  @override
  void initState() {
    super.initState();

    // Инициализация пользователей в initState
    otherUsers = List.generate(
      8,
      (index) => OtherUser(
        profilePhotoUrl: 'lib/assets/avatars/avatar_$index.png',
        lastOnline: DateTime.now().subtract(
          Duration(hours: 1 + index), // Начинаем с 1 часа назад
        ),
        lastMessage: lastMessages[index],
        mustCheck: index % 2 == 0, // Условие для mustCheck
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          expandedHeight: 150.0,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ЧАТЫ',
                  style: TextStyle(
                    color: AppColors.mainTextColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      'OFF',
                      style: TextStyle(
                        color: AppColors.mainTextColor,
                      ),
                    ),
                    Switch(
                      value: _switchValue,
                      onChanged: (bool newValue) {
                        setState(() {
                          _switchValue = newValue;
                          showIncognitoBottomSheet(context);
                        });
                      },
                      activeColor: Colors.amber,
                      inactiveThumbColor: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Текущий пользователь
        SliverToBoxAdapter(
          child: ListTile(
            leading: SvgPicture.asset(
              'lib/assets/images/heart.svg',
              height: 60,
              width: 60,
            ),
            subtitle: Text(
              '${currentUser.receivedLikes} человек тебя лайкнули',
              style: const TextStyle(color: Colors.white54),
            ),
          ),
        ),
        // Другие пользователи
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final user = otherUsers[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/CurrentChat');
                },
                child: Stack(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(user.profilePhotoUrl),
                        radius: 30,
                      ),
                      title: Text(
                        'Профиль ${index + 1}',
                        style: const TextStyle(color: AppColors.mainTextColor),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${user.lastOnline.hour} ч ${user.lastOnline.minute} мин',
                            style: const TextStyle(color: Colors.white54),
                          ),
                          Text(
                            user.lastMessage ?? "",
                            style: const TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                    if (user.mustCheck ?? false)
                      Positioned(
                        top: 25,
                        right: 10,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
            childCount: otherUsers.length,
          ),
        ),
      ],
    );
  }
}
