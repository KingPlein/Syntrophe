import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/theme/app_theme.dart';
import 'features/bible/presentation/bible_screen.dart';
import 'features/notes/presentation/notes_screen.dart';
import 'features/sermons/presentation/sermons_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('settings');
  runApp(const SyntropheApp());
}

class SyntropheApp extends StatelessWidget {
  const SyntropheApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Watch settings box for theme changes in a real app (with Riverpod),
    // for now using ValueListenableBuilder for quick setup.
    return ValueListenableBuilder(
      valueListenable: Hive.box('settings').listenable(keys: ['themeMode']),
      builder: (context, Box box, _) {
        final themeModeString = box.get('themeMode', defaultValue: 'system');
        ThemeMode themeMode;
        if (themeModeString == 'light') {
          themeMode = ThemeMode.light;
        } else if (themeModeString == 'dark') {
          themeMode = ThemeMode.dark;
        } else {
          themeMode = ThemeMode.system;
        }

        return MaterialApp(
          title: 'Syntrophe',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeMode,
          home: const MainScaffold(),
        );
      },
    );
  }
}

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    BibleScreen(),
    NotesScreen(),
    SermonsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Bible',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Notes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Sermons',
          ),
        ],
      ),
    );
  }
}
