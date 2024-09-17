import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ПР2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 40.0), // Отступ сверху для текста
            child: const Text(
              'Авторизация',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 120,),
          const Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Логин',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(150, 150, 150, 1),
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 239, 244, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 12.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Пароль',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(150, 150, 150, 1),
                ),
                filled: true,
                fillColor: Color.fromRGBO(240, 239, 244, 1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      rememberMe = value ?? false;
                    });
                  },
                ),
                const Text('Запомнить меня'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity, // Полная ширина родителя
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Синий цвет кнопки
                  foregroundColor: Colors.white, // Белый цвет текста
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                onPressed: () {},
                child: const Text(
                  'Войти',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity, // Полная ширина родителя
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue), // Синяя обводка
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                onPressed: () {},
                child: const Text(
                  'Регистрация',
                  style: TextStyle(color: Colors.blue, fontSize: 18), // Синий текст
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              // Логика для восстановления пароля
            },
            child: const Text('Восстановить пароль'),
          ),
        ],
      ),
    );
  }
}
