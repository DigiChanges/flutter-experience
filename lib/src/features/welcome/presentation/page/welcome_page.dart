import 'package:flutter/material.dart';
import 'package:flutter_experience/src/shared/presentation/i18n/i18n_wrapper.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Text(I18NWrapper.getTranslation(context, 'welcome')),
          const SizedBox(height: 20), // Add some space between the text and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  I18NWrapper.setLocale(context, 'en');
                },
                child: const Text('En'),
              ),
              const SizedBox(width: 20), // Add some space between buttons
              ElevatedButton(
                onPressed: () {
                  I18NWrapper.setLocale(context, 'es');
                },
                child: const Text('Es'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
