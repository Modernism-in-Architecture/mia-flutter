import 'package:flutter/material.dart';
import 'package:mia/src/views/home_view.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


Future<void> main() async {
  await dotenv.load();
  runApp(
      const ProviderScope(
        child: Mia()
      ),
  );
}


class Mia extends HookConsumerWidget {
  const Mia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Modernism in Architecture',
      home: const HomeView(),
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
              builders: {
                TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              }
            ),
      ),
    );
  }
}
