import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bpbd/helper/color_pallete.dart';
import 'package:bpbd/ui/home/home_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:bpbd/provider/landing/landing_bloc.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  static final List<Widget> _pagepOption = <Widget>[
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<LandingBloc, LandingState>(
          builder: (context, state) {
            return Stack(
              fit: StackFit.expand,
              children: [
                _pagepOption[state.index],
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(
                        bottom: 10, left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: ColorPalette.generalWhite,
                      border: Border.all(color: ColorPalette.generalSoftGrey),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: SalomonBottomBar(
                      currentIndex: state.index,
                      onTap: (i) =>
                      context.read<LandingBloc>()
                        ..add(LandingEvent.onChange(i)),
                      items: [
                        SalomonBottomBarItem(
                          icon: const Icon(Icons.home),
                          title: const Text("Beranda"),
                          selectedColor: ColorPalette.generalSecondaryColor,
                          unselectedColor: ColorPalette.generalGrey,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
