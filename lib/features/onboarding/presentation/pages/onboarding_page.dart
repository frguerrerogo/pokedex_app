import 'package:flutter/material.dart';
import 'package:pokedex_app/core/core_exports.dart'
    show AppImages, HomeRoute, prefs, AppPrimaryButton, InfoCardContent;
import 'package:pokedex_app/features/onboarding/presentation/widgets/page_indicator.dart';
import 'package:pokedex_app/l10n/app_localizations.dart' show AppLocalizations;

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  Future<void> _completeOnboarding() async {
    await prefs.setBool('hasSeenOnboarding', true);
    if (!mounted) return;
    HomeRoute().push(context);
  }

  void _nextPage(int totalPages) {
    if (_currentPage == totalPages - 1) {
      _completeOnboarding();
    } else {
      _controller.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: onboardingData.length,
                onPageChanged: (index) {
                  setState(() => _currentPage = index);
                },
                itemBuilder: (context, index) {
                  final data = onboardingData[index];
                  return InfoCardContent(
                    image: data["image"]!,
                    title: data["title"]!,
                    subtitle: data["subtitle"]!,
                  );
                },
              ),
            ),

            PageIndicator(currentPage: _currentPage, totalPages: onboardingData.length),

            const SizedBox(height: 20),

            AppPrimaryButton(
              label: onboardingData[_currentPage]["button"]!,
              onPressed: () => _nextPage(onboardingData.length),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
