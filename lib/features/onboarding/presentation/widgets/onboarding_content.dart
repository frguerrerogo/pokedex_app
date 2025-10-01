import 'package:flutter/widgets.dart';
import 'package:pokedex_app/core/constants/constants_exports.dart' show AppTextStyles;

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const OnboardingContent({super.key, required this.image, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final imageHeight = MediaQuery.of(context).size.height * 0.3;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: imageHeight, semanticLabel: title),
        const SizedBox(height: 30),
        Text(title, textAlign: TextAlign.center, style: AppTextStyles.headingMedium(context)),
        const SizedBox(height: 15),
        Text(subtitle, textAlign: TextAlign.center, style: AppTextStyles.bodySmall(context)),
      ],
    );
  }
}
