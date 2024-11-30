import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screen/explore/explore_view.dart';
import 'state_management/category_picker.dart';
import 'utils/custom_scroll_behavior.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCm4Nuz8dnDtvPd9cLDFUUf_mbhKdUTj5Y",
        authDomain: "twnsqr-townsquare.firebaseapp.com",
        projectId: "twnsqr-townsquare",
        storageBucket: "twnsqr-townsquare.firebasestorage.app",
        messagingSenderId: "675467833617",
        appId: "1:675467833617:web:00446f70740eeb884d9cb0"),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => TabCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ResponsiveHomePage(),
        scrollBehavior: CustomScrollBehavior(),
      ),
    );
  }
}


