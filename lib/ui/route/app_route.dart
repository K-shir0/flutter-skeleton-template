import 'package:auto_route/auto_route.dart';

import '../home_page.dart';

export 'app_route.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
