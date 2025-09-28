import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "title": "Todos los Pokémon en un solo lugar",
      "subtitle":
          "Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo",
      "image": "assets/images/onboarding1.png",
      "button": "Continuar",
    },
    {
      "title": "Mantén tu Pokédex actualizada",
      "subtitle": "Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más",
      "image": "assets/images/onboarding2.png",
      "button": "Empecemos",
    },
  ];

  void _nextPage() {
    if (_currentPage == onboardingData.length - 1) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      _controller.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
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
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Text(
                  data["subtitle"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: _nextPage,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
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
