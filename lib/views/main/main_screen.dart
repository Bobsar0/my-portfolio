import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We hide the appbar on desktop
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ),
      ),
      drawer: SideMenu(),
      // body: Center(
      //   child: Container(
      //     constraints: BoxConstraints(maxWidth: kMaxWidth),
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         if (Responsive.isDesktop(context))
      //           Expanded(
      //             flex: 2,
      //             child: SideMenu(),
      //           ),
      //         SizedBox(width: defaultPadding),
      //         Expanded(
      //           flex: 7,
      //           child: SingleChildScrollView(
      //             child: Column(
      //               children: [
      //                 ...children,
      //                 // our footer
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
