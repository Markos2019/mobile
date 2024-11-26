// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Perfil());
// }

// class Perfil extends StatelessWidget {
//   const Perfil({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // title: 'Perfil do Usuário',
//       theme: ThemeData(
//         primarySwatch: Colors.purple, // Define a cor roxa como principal
//         scaffoldBackgroundColor: Colors.white, // Fundo preto
//         textTheme: const TextTheme(
//           bodyLarge: TextStyle(color: Colors.black), // Texto branco
//           bodyMedium: TextStyle(color: Colors.black), // Texto branco
//         ),
//         appBarTheme: AppBarTheme(
//           backgroundColor: Colors.black, // Fundo preto para AppBar
//         ),

//         progressIndicatorTheme: ProgressIndicatorThemeData(
//           color: Colors.purple, // Indicador de progresso roxo
//         ),
//       ),
//       home: const ProfilePage(),
//     );
//   }
// }

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Exemplo de dados do usuário
//     final String fullName = "João da Silva";
//     // final double progress = 75.0; // Progresso em porcentagem
//     final List<String> activities = ["Musculação", "Ginástica", "Yoga"];

//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Image.asset(
//               'images/logotipo.png',
//               height: 40, // Altura da imagem
//               fit: BoxFit.contain,
//             ),
//             const SizedBox(width: 10), // Espaço entre a imagem e o texto
//             const Text(
//               'Powerflex',
//               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//               ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Nome completo
//             Text(
//               'Olá, $fullName',
//               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//             ),
//             const SizedBox(height: 10),

//             // Progresso nos Treinos
//             // const Text(
//             //   'Progresso:',
//             //   style: TextStyle(fontSize: 14, color: Colors.black),
//             // ),

//             // const SizedBox(height: 8),
//             // Text(
//             //   '${progress.toStringAsFixed(0)}% concluído',
//             //   style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//             // ),
//             // LinearProgressIndicator(
//             //   value: progress / 100,
//             //   minHeight: 10,
//             //   backgroundColor: Colors.grey[300],
//             // ),
//             // const SizedBox(height: 20),

//             // Tipos de Atividades
//             const Text( 'Atividades Praticadas:',
//             style: TextStyle(fontSize: 18, color: Colors.black),
//             ),
//             const SizedBox(height: 10),
//             Wrap(
//             spacing: 16.0, // Espaçamento horizontal entre os itens
//             runSpacing: 16.0, // Espaçamento vertical entre os itens
//             children: activities.map((activity) {
//               return Container(
//                 padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 235, 211, 240), // Fundo roxo claro
//                   borderRadius: BorderRadius.circular(10), // Borda arredondada
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.3),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3), // Sombra deslocada
//                     ),
//                   ],
//                 ),
//                 child: Text(
//                   activity,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               );
//             }).toList(),
//           ),
//          ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Perfil do Usuário',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//         scaffoldBackgroundColor: Colors.white,
//         textTheme: const TextTheme(
//           bodyLarge: TextStyle(color: Colors.black),
//           bodyMedium: TextStyle(color: Colors.black),
//         ),
//         appBarTheme: AppBarTheme(
//           backgroundColor: Colors.black,
//         ),
//         chipTheme: ChipThemeData(
//           backgroundColor: Colors.purple[100]!,
//         ),
//         progressIndicatorTheme: ProgressIndicatorThemeData(
//           color: Colors.purple,
//         ),
//       ),
//       home: const ProfilePage(),
//     );
//   }
// }

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Exemplo de dados do usuário
//     final String fullName = "João da Silva";
//     final String email = "joao.silva@example.com";
//     final String imageUrl =
//         "images/profile_pic.png"; // Adicione sua imagem de perfil aqui
//     final double progress = 75.0; // Progresso em porcentagem
//     final List<String> activities = ["Musculação", "Ginástica", "Yoga"];
//     final List<String> goals = [
//       "Perder Peso",
//       "Ganhar Massa Muscular",
//       "Melhorar Cardio"
//     ];
//     final List<String> achievements = [
//       "Primeiro Treino",
//       "Primeira Semana Completa",
//       "Primeiro Mês Completo"
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             Image.asset(
//               'images/logotipo.png',
//               height: 40, // Altura da imagem
//               fit: BoxFit.contain,
//             ),
//             const SizedBox(width: 10), // Espaço entre a imagem e o texto
//             const Text(
//               'Powerflex',
//               style:
//                   TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage(
//                         imageUrl), // Adicione sua imagem de perfil aqui
//                   ),
//                   const SizedBox(width: 20),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         fullName,
//                         style: const TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         email,
//                         style:
//                             const TextStyle(fontSize: 16, color: Colors.black),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),

//               // Progresso nos Treinos
//               const Text(
//                 'Progresso nos Treinos:',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//               const SizedBox(height: 8),
//               LinearProgressIndicator(
//                 value: progress / 100,
//                 minHeight: 10,
//                 backgroundColor: Colors.grey[300],
//                 color: Colors.purple,
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 '${progress.toStringAsFixed(0)}% concluído',
//                 style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//               const SizedBox(height: 20),

//               // Tipos de Atividades
//               const Text(
//                 'Atividades Praticadas:',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//               const SizedBox(height: 10),
//               Wrap(
//                 spacing: 8.0,
//                 runSpacing: 8.0,
//                 children: activities.map((activity) {
//                   return Chip(
//                     label: Text(activity),
//                     backgroundColor:
//                         Colors.purple[100]!, // Cor de fundo do Chip
//                   );
//                 }).toList(),
//               ),
//               const SizedBox(height: 20),

//               // Metas
//               const Text(
//                 'Metas:',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//               const SizedBox(height: 10),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: goals.map((goal) {
//                   return Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 4.0),
//                     child: Row(
//                       children: [
//                         Icon(Icons.check_circle, color: Colors.purple),
//                         const SizedBox(width: 8),
//                         Text(goal,
//                             style: const TextStyle(
//                                 fontSize: 16, color: Colors.black)),
//                       ],
//                     ),
//                   );
//                 }).toList(),
//               ),
//               const SizedBox(height: 20),

//               // Conquistas
//               const Text(
//                 'Conquistas:',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//               const SizedBox(height: 10),
//               Wrap(
//                 spacing: 8.0,
//                 runSpacing: 8.0,
//                 children: achievements.map((achievement) {
//                   return Chip(
//                     label: Text(achievement),
//                     backgroundColor: Colors.purple[100]!,
//                   );
//                 }).toList(),
//               ),
//               const SizedBox(height: 20),

//               // Calendário de Atividades
//               const Text(
//                 'Calendário de Atividades:',
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               ),
//               const SizedBox(height: 10),
//               Container(
//                 height: 200,
//                 color: Colors.purple[50],
//                 child: Center(
//                   child: Text(
//                     'Exemplo de calendário',
//                     style: TextStyle(
//                         fontSize: 16, color: Colors.black.withOpacity(0.6)),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'login.dart'; // Certifique-se de importar a tela de login corretamente

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil do Usuário',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  final String fullName = "João da Silva";
  final String email = "joao.silva@example.com";

  final List<Map<String, dynamic>> workouts = [
    {
      "name": "Musculação",
      "description": "Treino para fortalecimento muscular.",
      "exercises": ["Supino", "Agachamento", "Rosca Direta"],
      "completed": false,
      "icon": Icons.fitness_center,
    },
    {
      "name": "Yoga",
      "description": "Posturas e meditações para relaxamento.",
      "exercises": [
        "Saudação ao Sol",
        "Postura da Árvore",
        "Cachorro Olhando para Baixo"
      ],
      "completed": false,
      "icon": Icons.self_improvement,
    },
    {
      "name": "Corrida",
      "description": "Corrida para condicionamento cardiovascular.",
      "exercises": ["Alongamento", "Corrida Leve", "Corrida Intensa"],
      "completed": false,
      "icon": Icons.directions_run,
    },
  ];

  double get progress {
    int completedWorkouts =
        workouts.where((workout) => workout['completed']).length;
    return completedWorkouts / workouts.length;
  }

  void completeWorkout(int index) {
    setState(() {
      workouts[index]['completed'] = true;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Função para sair
  void _logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()), // Tela de login
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Powerflex',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          // Botão de "Sair"
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: _logout,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Informações do Usuário
              Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fullName,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(email, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Progresso nos Treinos
              const Text(
                'Progresso nos Treinos:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                value: progress,
                minHeight: 10,
                backgroundColor: Colors.grey[300],
                color: Colors.purple,
              ),
              const SizedBox(height: 8),
              Text('${(progress * 100).toStringAsFixed(0)}% concluído',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),

              // Lista de Treinos
              const Text(
                'Treinos Disponíveis:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Column(
                children: workouts.asMap().entries.map((entry) {
                  int index = entry.key;
                  Map<String, dynamic> workout = entry.value;

                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: Icon(
                        workout['icon'],
                        size: 40,
                        color: Colors.purple,
                      ),
                      title: Text(workout['name']),
                      subtitle: Text(workout['description']),
                      trailing: workout['completed']
                          ? const Icon(Icons.check_circle, color: Colors.green)
                          : ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WorkoutDetailsPage(
                                      workout: workout,
                                      onComplete: () => completeWorkout(index),
                                    ),
                                  ),
                                );
                              },
                              child: const Text('Ver'),
                            ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Cursos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Treinos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}

class WorkoutDetailsPage extends StatelessWidget {
  final Map<String, dynamic> workout;
  final VoidCallback onComplete;

  const WorkoutDetailsPage({
    super.key,
    required this.workout,
    required this.onComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(workout['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              workout['description'],
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 20),
            const Text(
              'Exercícios:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            // Estilizando a lista de exercícios
            Expanded(
              child: ListView.builder(
                itemCount: workout['exercises'].length,
                itemBuilder: (context, index) {
                  String exercise = workout['exercises'][index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: const Icon(
                        Icons.check_circle_outline,
                        color: Colors.purple,
                      ),
                      title: Text(
                        exercise,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      tileColor: Colors.grey[100],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                onComplete();
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: const Text('Marcar como Concluído'),
            ),
          ],
        ),
      ),
    );
  }
}
