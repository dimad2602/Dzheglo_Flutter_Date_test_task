import 'package:dzheglo_flutter_date_test_task/components/sheets/incognito_sheet.dart';
import 'package:dzheglo_flutter_date_test_task/components/texts/text_big.dart';
import 'package:dzheglo_flutter_date_test_task/components/texts/text_medium.dart';
import 'package:dzheglo_flutter_date_test_task/components/texts/text_small.dart';
import 'package:dzheglo_flutter_date_test_task/models/other_user/other_model.dart';
import 'package:dzheglo_flutter_date_test_task/models/user_model/user_model.dart';
import 'package:dzheglo_flutter_date_test_task/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  bool _switchValue = false;

  final User currentUser = const User(
    receivedLikes: 44,
  );

  List<OtherUser> otherUsers = [];

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

    otherUsers = List.generate(
      8,
      (index) => OtherUser(
        profilePhotoUrl: 'lib/assets/avatars/avatar_$index.png',
        lastOnline: DateTime.now().subtract(
          Duration(hours: 1 + index),
        ),
        lastMessage: lastMessages[index],
        mustCheck: index % 2 == 0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(
          backgroundColor: AppColors.backgroundColor,
          expandedHeight: 150.0,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(),
        ),
        SliverToBoxAdapter(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Container(
              color: AppColors.mainBlackColor,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TextBig(
                      text: 'ЧАТЫ',
                    ),
                    Row(
                      children: [
                        const TextMedium(
                          text: 'OFF',
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _switchValue = !_switchValue;
                              showIncognitoBottomSheet(context);
                            });
                          },
                          child: SvgPicture.asset(
                            'lib/assets/icons/switch_off.svg',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Текущий пользователь
        SliverToBoxAdapter(
          child: Container(
            color: AppColors.mainBlackColor,
            child: Column(
              children: [
                ListTile(
                  leading: SvgPicture.asset(
                    'lib/assets/images/heart.svg',
                    height: 60,
                    width: 60,
                  ),
                  title: TextMedium(
                    text: '${currentUser.receivedLikes} человек тебя лайкнули',
                    size: 14,
                    bold: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
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
                child: Container(
                  color: AppColors.mainBlackColor,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(user.profilePhotoUrl),
                              radius: 30,
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextSmall(
                                  text:
                                      '${user.lastOnline.hour} ч ${user.lastOnline.minute} мин',
                                ),
                                TextSmall(
                                  text: user.lastMessage ?? "",
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                          if (user.mustCheck ?? false)
                            Positioned(
                              top: 25,
                              right: 15,
                              child: Container(
                                width: 4,
                                height: 4,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
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
