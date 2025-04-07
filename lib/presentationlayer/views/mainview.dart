import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:googlepayclone/model/api/moviemodelapicall.dart';
import 'package:googlepayclone/model/datamodel/moviemodel.dart';
import 'package:googlepayclone/presentationlayer/views/appbar.dart';
import 'package:googlepayclone/presentationlayer/views/listofmoviesview.dart';

import '../../viewmodel/provider/getdataprovider.dart';

class Mainview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Listofmoviesviwew(),
    );
  }
}
