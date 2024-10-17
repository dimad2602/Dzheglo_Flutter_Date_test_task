import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            const SliverAppBar(
              expandedHeight: 150.0,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'ЧАТЫ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'OFF',
                          style: TextStyle(color: Colors.white),
                        ),
                        Switch(
                          value: _switchValue,
                          onChanged: (bool newValue) {
                            setState(() {
                              _switchValue = newValue;
                            });
                          },
                          activeColor: Colors
                              .amber, // Цвет активного переключателя (желтый)
                          inactiveThumbColor:
                              Colors.grey, // Цвет неактивного переключателя
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar_$index.jpg'),
                    ),
                    title: Text(
                      'Профиль $index',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Последнее сообщение...',
                      style: TextStyle(color: Colors.white54),
                    ),
                  );
                },
                childCount: 10, // Количество профилей
              ),
            ),
          ],
        ),

        // Кнопка сверху справа
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Действие на кнопку
            },
          ),
        ),
      ],
    );
  }
}
