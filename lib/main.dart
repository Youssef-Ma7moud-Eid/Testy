import 'package:flutter/material.dart';
import 'package:test/Core/bloc_observer/bloc_observer.dart';
import 'package:test/Core/utilities/app_router.dart';
import 'package:test/Features/records/data/repositories/manage_record_repositry_impl.dart';
import 'package:test/Features/records/data/repositories/manage_upload_images_impl.dart';
import 'package:test/Features/records/presentation/manager/manage_record/manage_record_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/Features/records/presentation/manager/manage_record_image/manage_upload_image_cubit.dart';
void main() {
    Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
     BlocProvider(create: (context) => ManageRecordCubit(ManageRecordRepositryImpl())),
      BlocProvider(create: (context) => ManageUploadImageCubit(ManageUploadImagesImpl())),
      ],
    
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
