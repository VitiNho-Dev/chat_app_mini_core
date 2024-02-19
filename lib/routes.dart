import 'package:routefly/routefly.dart';

import 'app/(public)/chat_page.dart' as a0;

List<RouteEntity> get routes => [
  RouteEntity(
    key: '/chat',
    uri: Uri.parse('/chat'),
    routeBuilder: (ctx, settings) => Routefly.defaultRouteBuilder(
      ctx,
      settings,
      const a0.ChatPage(),
    ),
  ),
];

const routePaths = (
  path: '/',
  chat: '/chat',
);
