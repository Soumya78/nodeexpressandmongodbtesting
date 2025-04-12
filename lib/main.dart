import 'package:flutter/material.dart';
import 'package:googlepayclone/presentationlayer/views/mainview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'model/routes/detailscreenroute.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,

    );
  }
}
