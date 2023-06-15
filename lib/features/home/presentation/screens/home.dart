import 'dart:io';

import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/app_navbar.dart';
import 'package:allxclusive/features/user_tickets/presentation/screens/indexed_tickets.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:math' as math;

import '../../../favs/presentation/screens/indexed_favs.dart';
import 'indexed_screens/indexed_home.dart';
import '../../../map/presentation/screens/indexed_map.dart';
import 'indexed_screens/indexed_profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  @override
  void initState() {
    Permission.contacts.request();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AppNavbar(
        selected: _selectedIndex,
        onSelectChanged: (i){
          setState(() {
            _selectedIndex = i;
          });
        },
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: KColors.bgColor,
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          IndexedHome(),
          IndexedMap(),
          IndexedTickets(),
          IndexedFavs(),
          IndexedProfile(),
        ],
      )
    );
  }

  Widget _floatingButton(int selected, Function(int) onSelectChanged){
    return Stack(
      children: [
        Arc(
          diameter: 78,
          color: Color(0xFF363636).withOpacity(1),
        ),
        Container(
          margin: EdgeInsets.only(top: 1, left: 1),
          width: 76,
          height: 76,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selected == 2 ? Color(0xFF211B28) : Color(0xFF27232C),
          ),
          child: Material(
            color: selected == 2 ? Color(0xFF211B28) : Color(0xFF27232C),
            shape: CircleBorder(),
            child: InkWell(
              customBorder: CircleBorder(),
              onTap: (){
                onSelectChanged.call(2);
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset('assets/splash_logo.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Arc extends StatelessWidget {
  final double diameter;
  final Color color;

  const Arc({super.key, this.diameter = 200, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(color: color),
      size: Size(diameter, diameter),
    );
  }
}


// This is the Painter class
class MyPainter extends CustomPainter {
  final Color color;


  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      math.pi,
      math.pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  MyPainter({
    required this.color,
  });
}
