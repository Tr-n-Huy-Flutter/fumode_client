import 'package:flutter/material.dart';
import 'package:fumode_ui/fumode_ui.dart' as ui;
import 'package:auto_route/auto_route.dart';

@RoutePage()
class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ui.AppScaffold(
      body: Center(
        child: Container(color: Colors.white, child: Text('Onboarding page')),
      ),
    );
  }
}
