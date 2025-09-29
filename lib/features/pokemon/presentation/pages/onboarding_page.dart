import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart' show AppImages;
import 'package:pokedex_app/l10n/app_localizations.dart' show AppLocalizations;

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage == 1) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      _controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final onboardingData = [
      {
        "title": l10n.onboardingTitle1,
        "subtitle": l10n.onboardingSubtitle1,
        "image": AppImages.onboarding_1,
        "button": l10n.onboardingButton1,
      },
      {
        "title": l10n.onboardingTitle2,
        "subtitle": l10n.onboardingSubtitle2,
        "image": AppImages.onboarding_2,
        "button": l10n.onboardingButton2,
      },
    ];

    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        itemCount: onboardingData.length,
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
        itemBuilder: (context, index) {
          final data = onboardingData[index];
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(data["image"]!, height: 250),
                const SizedBox(height: 32),
                Text(
                  data["title"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  data["subtitle"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: _nextPage,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(data["button"]!),
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}
