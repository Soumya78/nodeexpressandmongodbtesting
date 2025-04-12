import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../viewmodel/provider/getdataprovider.dart';

class Listofmoviesviwew extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getdata = ref.watch(getdataprovider);
    return getdata.when(
      data: (movies) {
        final _listmovie = List.from(movies);
        return
             ListView.builder(
                itemCount: _listmovie.length,
                itemBuilder: (context, index) {
                  return Dismissible(

                      key: ValueKey(_listmovie[index].name),
                      background: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.centerRight,
                        color: Colors.redAccent,

                        child: const Icon(Icons.delete, color: Colors.white, size: 30),
                      ),

                      child: ListTile(
                        title: Text(_listmovie[index].name),
                        onTap: (){
                          context.go('/details');
                        },
                      ));
                });
      },
      error: (err, _) => Center(
        child: Text("No data found "),
      ),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
