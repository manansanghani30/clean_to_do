import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '0_data/data_sources/local/hive_local_data_source.dart';
import '0_data/repositories/todo_repository_local.dart';
import '1_domain/repositories/todo_repository.dart';
import '2_application/app/basic_app.dart';

Future<void> main() async {
  GoRouter.optionURLReflectsImperativeAPIs = true;

  final localDataSource = HiveLocalDataSource();
  await localDataSource.init();

  runApp(
    RepositoryProvider<ToDoRepository>(
      create:
          (context) => ToDoRepositoryLocal(localDataSource: localDataSource),
      child: const BasicApp(),
    ),
  );
}
