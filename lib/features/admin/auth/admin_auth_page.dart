import 'package:demo_app/core/responsive/responsive_builder.dart';
import 'package:demo_app/features/admin/auth/widgets/login_form.dart';
import 'package:demo_app/features/admin/auth/widgets/register_form.dart';
import 'package:demo_app/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

class AdminAuthPage extends StatefulWidget {
  const AdminAuthPage({super.key});

  @override
  State<AdminAuthPage> createState() => _AdminAuthPageState();
}

class _AdminAuthPageState extends State<AdminAuthPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final isDesktop = width >= 1024;

    return GlassPage(
      background: const Background(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: isDesktop ? 1000 : 500),
                child: GlassCard(
                  padding: const EdgeInsets.all(32),
                  child: ResponsiveBuilder(
                    mobile: _MobileContent(tabController: _tabController),
                    tablet: _MobileContent(tabController: _tabController),
                    desktop: _DesktopContent(tabController: _tabController),
                  ),

                  // child: isDesktop
                  //     ? _DesktopContent(tabController: _tabController)
                  //     : _MobileContent(tabController: _tabController),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DesktopContent extends StatelessWidget {
  final TabController tabController;

  const _DesktopContent({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 160),
              const SizedBox(height: 24),
              Text(
                'Admin Portal',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),

        const SizedBox(width: 32),

        Expanded(child: _AuthTabs(tabController: tabController)),
      ],
    );
  }
}

class _MobileContent extends StatelessWidget {
  final TabController tabController;

  const _MobileContent({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/logo.png', height: 160),

        const SizedBox(height: 24),

        _AuthTabs(tabController: tabController),
      ],
    );
  }
}

class _AuthTabs extends StatelessWidget {
  final TabController tabController;

  const _AuthTabs({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: 'Login'),
            Tab(text: 'Register'),
          ],
        ),

        const SizedBox(height: 24),

        SizedBox(
          height: 320,
          child: TabBarView(
            controller: tabController,
            children: const [LoginForm(), RegisterForm()],
          ),
        ),
      ],
    );
  }
}
