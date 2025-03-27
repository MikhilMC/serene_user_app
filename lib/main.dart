import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serene_user_app/app_constants/app_colors.dart';
import 'package:serene_user_app/app_modules/booking_details_module/bloc/booking_details_bloc/booking_details_bloc.dart';
import 'package:serene_user_app/app_modules/booking_module/bloc/add_booking_bloc/add_booking_bloc.dart';
import 'package:serene_user_app/app_modules/home_screen_module/bloc/property_list_bloc/property_list_bloc.dart';
import 'package:serene_user_app/app_modules/home_screen_module/bloc/user_bookings_bloc/user_bookings_bloc.dart';
import 'package:serene_user_app/app_modules/home_screen_module/bloc/user_profile_bloc/user_profile_bloc.dart';
import 'package:serene_user_app/app_modules/introduction_screen_module/view/introduction_screen.dart';
import 'package:serene_user_app/app_modules/login_module/bloc/login_bloc.dart';
import 'package:serene_user_app/app_modules/payment_module/bloc/make_payment_bloc.dart';
import 'package:serene_user_app/app_modules/property_details_module/bloc/host_events_bloc/host_events_bloc.dart';
import 'package:serene_user_app/app_modules/property_details_module/bloc/property_details_bloc/property_details_bloc.dart';
import 'package:serene_user_app/app_modules/register_module/bloc/user_register_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Add a global navigator key
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UserRegisterBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => UserProfileBloc(),
        ),
        BlocProvider(
          create: (context) => PropertyListBloc(),
        ),
        BlocProvider(
          create: (context) => PropertyDetailsBloc(),
        ),
        BlocProvider(
          create: (context) => HostEventsBloc(),
        ),
        BlocProvider(
          create: (context) => AddBookingBloc(),
        ),
        BlocProvider(
          create: (context) => MakePaymentBloc(),
        ),
        BlocProvider(
          create: (context) => UserBookingsBloc(),
        ),
        BlocProvider(
          create: (context) => BookingDetailsBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Serene',
        debugShowCheckedModeBanner: false,
        navigatorKey: navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.firstColor,
          ),
          useMaterial3: true,
        ),
        home: const IntroductionScreen(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
