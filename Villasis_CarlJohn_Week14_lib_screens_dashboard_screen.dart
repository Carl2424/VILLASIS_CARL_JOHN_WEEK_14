import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF1E3E8A);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        elevation: 0,
        title: const Text(
          'Student Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Student Profile Header Row
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Carl John S. Villasis',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF111827),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'BSIT 3.3 • National Teachers College',
                          style: textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 44,
                    height: 44,
                    decoration: const BoxDecoration(
                      color: primaryBlue,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Text(
                        'CV',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),

              // Featured Course Card using Stack and Positioned
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/study_banner.jpg',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.transparent, Color(0xCC0F172A)],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF59E0B),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'WEEK 14 LAB',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF111827),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 12,
                      left: 14,
                      right: 14,
                      child: Text(
                        'PC16: Mobile Development',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // Summary Stat Cards Row
              Row(
                children: [
                  Expanded(
                    child: _buildStatCard(
                      title: '6 Subjects',
                      subtitle: 'BSIT 3.3 Load',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildStatCard(
                      title: '3 Tasks',
                      subtitle: 'Due This Week',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),

              // Enrolled Subjects List
              Text('Enrolled Subjects (BSIT 3.3)', style: textTheme.titleMedium),
              const SizedBox(height: 12),
              _buildSubjectCard('Mobile Development', 'PC16 • Flutter & Mobile UI Lab'),
              const SizedBox(height: 10),
              _buildSubjectCard('Computer Networking 2', 'Routing, Switching & Network Config'),
              const SizedBox(height: 10),
              _buildSubjectCard('IT Elective 2', 'Specialized IT Track'),
              const SizedBox(height: 10),
              _buildSubjectCard('R Language', 'Statistical Computing & Data Analysis'),
              const SizedBox(height: 10),
              _buildSubjectCard('Integrative Programming', 'Systems Integration & Architecture'),
              const SizedBox(height: 10),
              _buildSubjectCard('The Contemporary World', 'Global Studies & Society'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard({required String title, required String subtitle}) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 11, color: Color(0xFF6B7280)),
          ),
        ],
      ),
    );
  }

  Widget _buildSubjectCard(String subjectTitle, String subjectDesc) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFF8FAFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subjectTitle,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF111827),
            ),
          ),
          const SizedBox(height: 2),
          Text(
            subjectDesc,
            style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280)),
          ),
        ],
      ),
    );
  }
}
