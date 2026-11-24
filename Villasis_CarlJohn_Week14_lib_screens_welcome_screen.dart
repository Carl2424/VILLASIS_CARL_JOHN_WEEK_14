import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF1E3E8A);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // App Title
              const Center(
                child: Text(
                  'StudyHub',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: primaryBlue,
                  ),
                ),
              ),
              const SizedBox(height: 22),

              // Local Image Asset
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  'assets/images/study_banner.jpg',
                  width: double.infinity,
                  height: 175,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 24),

              // Welcome Heading & Subtitle
              Text('Welcome Back, Carl John', style: textTheme.headlineSmall),
              const SizedBox(height: 6),
              Text(
                'BSIT 3.3 • Sign in to view your enrolled subjects and daily schedule.',
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: 24),

              // Email Address Field (Static UI)
              const Text(
                'Email address',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF374151),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFFF9FAFB),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFD1D5DB)),
                ),
                child: const Text(
                  'carljohn.villasis@ntc.edu.ph',
                  style: TextStyle(fontSize: 13, color: Color(0xFF1F2937)),
                ),
              ),
              const SizedBox(height: 16),

              // Password Field (Static UI)
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF374151),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                decoration: BoxDecoration(
                  color: const Color(0xFFF9FAFB),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xFFD1D5DB)),
                ),
                child: const Text(
                  '••••••••••••',
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 2,
                    color: Color(0xFF1F2937),
                  ),
                ),
              ),
              const SizedBox(height: 26),

              // Sign In Button (Static UI)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: primaryBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
