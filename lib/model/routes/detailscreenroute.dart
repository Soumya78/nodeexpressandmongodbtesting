import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:googlepayclone/presentationlayer/views/detailedviewscreen.dart';
import 'package:googlepayclone/presentationlayer/views/mainview.dart';


  final GoRouter router = GoRouter(initialLocation: '/',routes: <RouteBase>[
    GoRoute(path: '/', builder: (BuildContext context,GoRouterState state ){
      return Mainview();
    }),
    GoRoute(path: '/details', builder: (BuildContext context,GoRouterState state ){
      return Detailedviewscreen();
    })
  ]);

