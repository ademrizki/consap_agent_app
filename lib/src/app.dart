import 'package:consap_agent_app/src/dashboard/ui/views/home_dashboard_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme.apply();
    final _appBarTextTheme = Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
        );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agent App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: GoogleFonts.oswaldTextTheme(_appBarTextTheme),
          centerTitle: true,
          elevation: 0,
        ),
        textTheme: GoogleFonts.oswaldTextTheme(_textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeDashboardPage(),
    );
  }
}
