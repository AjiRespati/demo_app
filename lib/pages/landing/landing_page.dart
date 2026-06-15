import 'package:demo_app/routes/route_names.dart';
// import 'package:demo_app/shared/widgets/liquid_glass_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';
import 'package:liquid_glass_widgets/widgets/interactive/glass_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // // Overlay
          // Positioned.fill(
          //   child: Container(color: Colors.black.withValues(alpha: 0.45)),
          // ),

          // Content
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/logo.png', width: 140),

                      const SizedBox(height: 24),

                      Text(
                        'Demo App',
                        style: Theme.of(context).textTheme.headlineLarge
                            ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        'ajirespati.com',
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        'mail.marketing@ajirespati.com',
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),

                      const SizedBox(height: 40),

                      SizedBox(
                        width: double.infinity,
                        // height: 50,
                        child: GlassButton(
                          icon: Icon(Icons.person),
                          label: 'User App',
                          shape: LiquidRoundedRectangle(borderRadius: 10),
                          onTap: () {
                            context.go(UserLoginRoute);
                          },
                        ),
                      ),

                      const SizedBox(height: 16),

                      SizedBox(
                        width: double.infinity,
                        // height: 50,
                        child: GlassButton.custom(
                          // icon: Icon(Icons.assignment_ind_outlined),
                          label: 'Admin App',
                          shape: LiquidRoundedRectangle(borderRadius: 10),

                          onTap: () {
                            context.go(AdminLoginRoute);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.assignment_ind_outlined),
                              Text('Admin App'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
