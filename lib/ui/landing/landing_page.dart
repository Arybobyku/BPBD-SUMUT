import 'package:bpbd/bloc/auth/authentication/authentication_bloc.dart';
import 'package:bpbd/bloc/inventaris/inventaris_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/bloc/landing/landing_bloc.dart';
import 'package:bpbd/injection.dart';
import 'package:bpbd/ui/home/home_page.dart';
import 'package:bpbd/ui/inventory/inventory_page.dart';
import 'package:bpbd/ui/report/report_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import '../profile/profile_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  @override
  void initState() {
    context.read<InventarisBloc>().add(
      InventarisEvent.watchAll(
        context,
        context.read<AuthenticationBloc>().state.meModel!.idKota!,
      ),
    );
    super.initState();
  }

  static final List<Widget> _pagepOption = <Widget>[
    const HomePage(),
    const ReportPage(),
    const InventoryPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    _handleLocationPermission();
    return BlocBuilder<LandingBloc, LandingState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [_pagepOption[state.index]],
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
                onTap: (val) => context.read<LandingBloc>()
                  ..add(LandingEvent.onChange(val)),
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

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }
}
