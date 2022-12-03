import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/provider/landing/landing_bloc.dart';
import 'package:bpbd/ui/home/home_page.dart';
import 'package:bpbd/ui/inventory/inventory_page.dart';
import 'package:bpbd/ui/report/report_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../profile/profile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static final List<Widget> _pagepOption = <Widget>[
    const HomePage(),
    const ReportPage(),
    const InventoryPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LandingBloc, LandingState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [_pagepOption[state.index]],
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: ColorPalette.generalSecondaryColor,
                type: BottomNavigationBarType.fixed,
                currentIndex: state.index,
                selectedItemColor: Colors.white,
                unselectedItemColor: ColorPalette.generalGrey,
                showUnselectedLabels: false,
                onTap: (val) =>
                    context.read<LandingBloc>()..add(LandingEvent.onChange(val)),
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Beranda"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.warning_amber), label: "Berita"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.inventory), label: "Inventory"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: "Account"),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
