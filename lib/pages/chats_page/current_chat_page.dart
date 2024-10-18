import 'package:dzheglo_flutter_date_test_task/components/texts/text_medium.dart';
import 'package:dzheglo_flutter_date_test_task/components/texts/text_small.dart';
import 'package:flutter/material.dart';
import 'package:dzheglo_flutter_date_test_task/utils/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class CurrentChatPage extends StatefulWidget {
  const CurrentChatPage({super.key});

  @override
  State<CurrentChatPage> createState() => _CurrentChatPageState();
}

class _CurrentChatPageState extends State<CurrentChatPage> {
  bool _showInterestBar = true;

  final List<String> messages = [
    'Привет!',
    'Как твои дела?',
    'Давно не виделись.',
    'Когда увидимся?',
    'До встречи!',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset('lib/assets/icons/back_arrow.svg'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const CircleAvatar(
          backgroundImage: AssetImage('lib/assets/avatars/avatar_1.png'),
          radius: 16,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: AppColors.mainTextColor,
            ),
            onPressed: () {},
          ),
        ],
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          if (_showInterestBar)
            Container(
              decoration: const BoxDecoration(
                color: AppColors.purpleColor,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "lib/assets/icons/rocket_icon.png",
                        height: 21,
                        width: 20,
                      ),
                      const SizedBox(width: 8),
                      const TextSmall(
                        text: '2 общих соблазна',
                        italic: true,
                        fontWeight: FontWeight.w300,
                      ),
                    ],
                  ),
                  IconButton(
                    icon: SvgPicture.asset('lib/assets/icons/close_icon.svg'),
                    onPressed: () {
                      setState(() {
                        _showInterestBar = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          const SizedBox(height: 8),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: TextMedium(
                            text: messages[index],
                          ),
                          leading: const CircleAvatar(
                            backgroundImage:
                                AssetImage('lib/assets/avatars/avatar_1.png'),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8.0),
                    child: Row(
                      children: [
                        SvgPicture.asset('lib/assets/icons/plus_icon.svg'),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[800],
                                hintText: 'Сообщение...',
                                hintStyle:
                                    const TextStyle(color: Colors.white54),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 12,
                                    horizontal:
                                        16), // Уменьшаем высоту TextField
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: SvgPicture.asset(
                                    'lib/assets/icons/send_messsage_icon.svg')),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SvgPicture.asset(
                          'lib/assets/icons/microphone_icon.svg',
                          height: 23,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
