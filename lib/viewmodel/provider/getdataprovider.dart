import 'package:googlepayclone/model/api/moviemodelapicall.dart';
import 'package:googlepayclone/model/datamodel/moviemodel.dart';
import 'package:riverpod/riverpod.dart';

final getdataprovider = FutureProvider<List<MovieModel>>((ref)async{

  return await getdata();
});

