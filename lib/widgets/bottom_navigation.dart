import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_travelapp/constants/color.dart';

class BottomNavigationTravel extends StatefulWidget {
  const BottomNavigationTravel({Key? key}) : super(key: key);

  @override
  _BottomNavigationTravelState createState() => _BottomNavigationTravelState();
}

class _BottomNavigationTravelState extends State<BottomNavigationTravel> {
  int _selectedIndex = 0;

  var buttomTextStyle = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 15,
              spreadRadius: 2,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ), //
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? new SvgPicture.asset('assets/icons/home_colored.svg')
                  : new SvgPicture.asset('assets/icons/home.svg'),
              title: Text(
                'Home',
                style: buttomTextStyle,
              ),
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? new SvgPicture.asset('assets/icons/order_colored.svg')
                  : new SvgPicture.asset('assets/icons/order.svg'),
              title: Text(
                'My Order',
                style: buttomTextStyle,
              ),
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? new SvgPicture.asset('assets/icons/watch_colored.svg')
                  : new SvgPicture.asset('assets/icons/watch.svg'),
              title: Text(
                'Watch List',
                style: buttomTextStyle,
              ),
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? new SvgPicture.asset('assets/icons/account_colored.svg')
                  : new SvgPicture.asset('assets/icons/account.svg'),
              title: Text(
                'Account',
                style: buttomTextStyle,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: mBlueColor,
          unselectedItemColor: mSubtitleColor,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          elevation: 0,
        ));
  }
}
