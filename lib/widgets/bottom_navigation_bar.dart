import 'package:flutter/material.dart';
import 'package:store_flutter/utils/app_theme.dart';

class BottomNavigationCustomBar extends StatelessWidget {
  int selectedIndex;
  Function(int) onItemTapped;
  BottomNavigationCustomBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});
  @override
  Widget build(BuildContext context) {
    //New

    return Container(
      height: 100,
      padding: const EdgeInsets.only(top: 5),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    onItemTapped(0);
                  },
                  icon: Icon(
                    Icons.home,
                    color: selectedIndex == 0
                        ? AppTheme.yellowApp
                        : AppTheme.greyApp,
                    size: 30,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: selectedIndex == 0
                      ? AppTheme.yellowApp
                      : Colors.transparent,
                  radius: 3,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    onItemTapped(1);
                  },
                  icon: Icon(
                    Icons.search,
                    color: selectedIndex == 1
                        ? AppTheme.yellowApp
                        : AppTheme.greyApp,
                    size: 30,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: selectedIndex == 1
                      ? AppTheme.yellowApp
                      : Colors.transparent,
                  radius: 3,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    onItemTapped(2);
                  },
                  icon: Icon(
                    Icons.shopping_bag,
                    color: selectedIndex == 2
                        ? AppTheme.yellowApp
                        : AppTheme.greyApp,
                    size: 30,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: selectedIndex == 2
                      ? AppTheme.yellowApp
                      : Colors.transparent,
                  radius: 3,
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    onItemTapped(3);
                  },
                  icon: Icon(
                    Icons.person,
                    color: selectedIndex == 3
                        ? AppTheme.yellowApp
                        : AppTheme.greyApp,
                    size: 30,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: selectedIndex == 3
                      ? AppTheme.yellowApp
                      : Colors.transparent,
                  radius: 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
