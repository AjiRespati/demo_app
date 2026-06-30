import 'package:demo_app/core/models/dashboard_summary.dart';
import 'package:demo_app/core/repository/dashboard_repository.dart';

class MockDashboardRepository implements DashboardRepository {
  @override
  Future<DashboardSummary> getSummary() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return const DashboardSummary(
      revenue: 125000000,
      users: 3240,
      orders: 842,
      growth: 18.4,
    );
  }
}
