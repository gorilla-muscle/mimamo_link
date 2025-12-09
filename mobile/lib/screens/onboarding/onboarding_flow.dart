import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class OnboardingFlow extends StatefulWidget {
  final VoidCallback onComplete;
  final Function(String) onNavigate;

  const OnboardingFlow({
    super.key,
    required this.onComplete,
    required this.onNavigate,
  });

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  int _currentSlide = 0;

  final List<Map<String, String>> _slides = [
    {
      'title': 'ワンタップで\n今日の調子を共有',
      'illustration': '👍',
    },
    {
      'title': '日常の変化を\n自動で要約',
      'illustration': '📊',
    },
    {
      'title': '家族みんなで\n見守り合える',
      'illustration': '💝',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFF5E6), Colors.white],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Logo & Title
              Padding(
                padding: const EdgeInsets.only(top: 48, bottom: 32),
                child: Column(
                  children: [
                    Text(
                      'みまもりんく',
                      style: TextStyle(
                        fontSize: 36,
                        letterSpacing: 4,
                        color: Colors.grey[800],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '離れて暮らす家族の\n安否と日常を緩くつなぐ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              // Carousel
              Expanded(
                child: PageView.builder(
                  itemCount: _slides.length,
                  onPageChanged: (index) => setState(() => _currentSlide = index),
                  itemBuilder: (context, index) {
                    final slide = _slides[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 300,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    slide['illustration']!,
                                    style: const TextStyle(fontSize: 80),
                                  ),
                                  if (index == 2)
                                    const Text(
                                      '👨‍👩‍👧‍👦',
                                      style: TextStyle(fontSize: 60),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            slide['title']!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.5,
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Dots Indicator
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _slides.length,
                  (index) => GestureDetector(
                    onTap: () => setState(() => _currentSlide = index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: index == _currentSlide ? 32 : 8,
                      height: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: index == _currentSlide ? Colors.grey[800] : Colors.grey[300],
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ),
              ),

              // Action Buttons
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: widget.onComplete,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                          elevation: 4,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              'みまもりんくをはじめる',
                              style: TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () => widget.onNavigate('email-login'),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                          children: const [
                            TextSpan(text: 'すでにアカウントをお持ちの方は '),
                            TextSpan(
                              text: 'ログイン',
                              style: TextStyle(
                                color: AppColors.primary,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
