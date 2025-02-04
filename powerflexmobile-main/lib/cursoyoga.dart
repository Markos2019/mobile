import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PowerFlex Curso',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        scaffoldBackgroundColor: Colors.grey[50],
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
      home: CourseDetailScreen(),
    );
  }
}

class CourseDetailScreen extends StatelessWidget {
  final Course course = Course(
    name: 'Yoga',
    description:
        'O Yoga é uma prática que promove o equilíbrio entre corpo e mente, melhorando a flexibilidade, reduzindo o estresse e aumentando a consciência corporal. Ideal para todas as idades e níveis de condicionamento físico.',
    availableTimes: ['07:00 AM', '09:30 AM', '01:00 PM', '05:30 PM'],
    benefits: [
      'Aumento da flexibilidade',
      'Redução do estresse',
      'Melhora na respiração',
      'Fortalecimento do corpo',
      'Equilíbrio emocional e mental',
    ],
  );

  CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple[900],
        title: Text(course.name, style: const TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header estilizado
            CourseHeader(course: course),
            const SizedBox(height: 20),

            // Descrição do curso
            SectionContainer(
              title: 'Sobre o Curso',
              content: course.description,
            ),
            const SizedBox(height: 20),

            // Benefícios do curso
            SectionContainer(
              title: 'Benefícios do Yoga',
              child: Column(
                children: course.benefits.map((benefit) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check_circle, color: Colors.purple[900]),
                      const SizedBox(width: 10),
                      Expanded(child: Text(benefit, style: Theme.of(context).textTheme.bodyMedium)),
                    ],
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),

            // Lista de horários disponíveis
            SectionContainer(
              title: 'Horários Disponíveis',
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: course.availableTimes.length,
                separatorBuilder: (_, __) => Divider(color: Colors.grey[300], height: 1),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.access_time, color: Colors.purple[900]),
                    title: Text(course.availableTimes[index]),
                    dense: true,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Rodapé
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class CourseHeader extends StatelessWidget {
  final Course course;

  const CourseHeader({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Gradiente estilizado
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              colors: [Colors.purple[900]!, Colors.purple[300]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.self_improvement,
              color: Colors.white,
              size: 80,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(course.name, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 5),
        Text('PowerFlex Academy', style: TextStyle(color: Colors.purple[900], fontSize: 18)),
      ],
    );
  }
}

class SectionContainer extends StatelessWidget {
  final String title;
  final String? content;
  final Widget? child;

  const SectionContainer({super.key, required this.title, this.content, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20, color: Colors.purple[900]),
          ),
          const SizedBox(height: 10),
          if (content != null) Text(content!, style: Theme.of(context).textTheme.bodyLarge),
          if (child != null) child!,
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.purple[900],
      ),
      child: const Center(
        child: Column(
          children: [
            Text(
              'PowerFlex Academy',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Transformando vidas através do movimento.',
              style: TextStyle(color: Colors.white70, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Icon(Icons.self_improvement, color: Colors.white, size: 28),
          ],
        ),
      ),
    );
  }
}

class Course {
  final String name;
  final String description;
  final List<String> availableTimes;
  final List<String> benefits;

  Course({
    required this.name,
    required this.description,
    required this.availableTimes,
    required this.benefits,
  });
}
