import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test/Features/records/data/models/record_model.dart';
import 'package:test/Features/records/presentation/views/manage_your_record_view.dart';
import 'package:test/Features/records/presentation/views/new_record_view.dart';
import 'package:test/Features/records/presentation/views/record_item_view.dart';

abstract class AppRouter {
  static const krecorditemview = '/recordview';
  static const knewrecordview = '/newrecord';
 
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return ManageYourRecordView();
        },
      ),
      GoRoute(
        path: krecorditemview,
        builder: (BuildContext context, GoRouterState state) {
          final tit = state.extra as String;
          return RecordItemView(
            title: tit,
          );
        },
      ),
      GoRoute(
        path: knewrecordview,
        builder: (BuildContext context, GoRouterState state) {
          final model = state.extra as RecordModel?;
          return NewRecordView(
           record: model,
          );
        },
      ),
     
    ],
  );
}
