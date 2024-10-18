import 'package:dzheglo_flutter_date_test_task/components/texts/text_medium.dart';
import 'package:dzheglo_flutter_date_test_task/components/texts/text_small.dart';
import 'package:dzheglo_flutter_date_test_task/utils/app_colors.dart';
import 'package:flutter/material.dart';
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
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 21.0),
                  child: Center(
                    child: SvgPicture.asset(
                      'lib/assets/images/incognito_glasses_purple.svg',
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    icon: SvgPicture.asset('lib/assets/icons/close_icon.svg'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextMedium(
                  text: "РЕЖИМ ",
                  bold: true,
                  fontWeight: FontWeight.w500,
                ),
                TextMedium(
                  text: "ИНКОГНИТО ",
                  italic: true,
                  bold: true,
                  fontWeight: FontWeight.w500,
                ),
                TextMedium(
                  text: "НА 24 ЧАСА",
                  italic: true,
                  bold: true,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: TextSmall(
                text:
                    "Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся незамеченным",
                size: 14,
                fontWeight: FontWeight.w300,
                color: AppColors.darkTextColor,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'lib/assets/images/incognito_card_1.svg',
                ),
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  'lib/assets/images/incognito_card_2.svg',
                ),
                const SizedBox(
                  width: 8,
                ),
                SvgPicture.asset(
                  'lib/assets/images/incognito_card_3.svg',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    padding: const EdgeInsets.only(top: 8, bottom: 8),
                    decoration: const BoxDecoration(
                      color: AppColors.buttonPinkColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: const Center(
                      child: TextMedium(
                        text: 'Купить',
                      ),
                    )),
              ),
            ),
            const SizedBox(height: 10),
            const TextMedium(
              text: 'УСЛОВИЯ И ПОЛОЖЕНИЯ',
            ),
          ],
        ),
      );
    },
  );
}
