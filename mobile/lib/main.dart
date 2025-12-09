import 'package:flutter/material.dart';
import 'screens/onboarding/onboarding_flow.dart';
import 'constants/colors.dart';

void main() {
  runApp(const MimamoLinkApp());
}

class MimamoLinkApp extends StatelessWidget {
  const MimamoLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'みまもりんく',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Zen Maru Gotnic',
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary
        )
      ),
      home: const AppNavigator()
    );
  }
}

class AppNavigator extends StatefulWidget {
  const AppNavigator({super.key});

  @override
  State<AppNavigator> createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  String _currentScreen = 'onboarding';

  void _navigateTo(String screen) {
    setState(() {
      _currentScreen = screen;
    });
  }

  void _handleOnboardingComplete() {
    setState(() {
      _currentScreen = 'signin';
    });
  }

  Widget _renderScreen() {
    switch (_currentScreen) {
      case 'onboarding':
        return OnboardingFlow(
          onComplete: _handleOnboardingComplete,
          onNavigate: _navigateTo
        );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFF5E6), Color(0xFFFFE0B2)]
        )
      ),
      child: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 448),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
              ]
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: _renderScreen(),
              bottomNavigationBar: null
            )
          )
        )
      )
    );
  }
}