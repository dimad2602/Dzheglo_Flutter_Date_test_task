import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

void showIncognitoBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        color: const Color(0xFF0F113A),
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          children: [
            Stack(children: [
              Center(
                child: SvgPicture.asset(
                  'lib/assets/images/incognito_glasses_purple.svg',
                  height: 60,
                ),
              ),
              Positioned(
                top: 1,
                right: 1,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ]),
            const SizedBox(height: 10),
            const Text(
              'РЕЖИМ ИНКОГНИТО НА 24 ЧАСА',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся незамеченным',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCard('1', '99 ₽',
                    'lib/assets/images/incognito_glasses_gold.svg'),
                _buildCard('3', '199 ₽',
                    'lib/assets/images/incognito_glasses_gold.svg',
                    isHit: true),
                _buildCard('7', '399 ₽',
                    'lib/assets/images/incognito_glasses_gold.svg',
                    isDiscount: true),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE6007E), // Цвет кнопки
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                // Действие на покупку
              },
              child: const Text(
                'Купить',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'УСЛОВИЯ И ПОЛОЖЕНИЯ',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
      );
    },
  );
}

Widget _buildCard(String days, String price, String imagePath,
    {bool isHit = false, bool isDiscount = false}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.black54,
      borderRadius: BorderRadius.circular(12),
      border: isHit
          ? Border.all(color: Colors.red, width: 2)
          : isDiscount
              ? Border.all(color: Colors.orange, width: 2)
              : null,
    ),
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        if (isHit) ...[
          const Text('Хит',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
        ],
        if (isDiscount) ...[
          const Text('-42%',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
        ],
        SvgPicture.asset(
          imagePath,
          height: 10,
        ),
        const SizedBox(height: 5),
        Text(days, style: const TextStyle(color: Colors.white, fontSize: 16)),
        const SizedBox(height: 5),
        Text(price, style: const TextStyle(color: Colors.white)),
      ],
    ),
  );
}
