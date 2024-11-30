import 'package:flutter/material.dart';

import 'explore_desktop.dart';
import 'explore_mobile.dart';

class ResponsiveHomePage extends StatelessWidget {
  const ResponsiveHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        bool isMobile = width < 900;  
        bool isTablet = width >= 900 && width < 1200;  

        if (isMobile) {
          return const ExploreMobileView();  
        } else if (isTablet) {
          return const ExploreDesktopView(); 
        } else {
          return const ExploreDesktopView();  
        }
      },
    );
  }
}