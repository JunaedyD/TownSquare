import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../state_management/category_picker.dart';
import '../../widgets/box/goal_box.dart';
import '../../widgets/list/event_list.dart';
import '../../widgets/list/filter_category.dart';
import '../../widgets/navbar/topbar.dart';
import '../../widgets/textfield/search_box.dart';

class ExploreMobileView extends StatefulWidget {
  const ExploreMobileView({super.key});

  @override
  State<ExploreMobileView> createState() => _ExploreMobileViewState();
}

class _ExploreMobileViewState extends State<ExploreMobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children: [
          const TopBar(),
          const GoalBox(),
          const SearchBox(),
          const TabBarWidget(),
          BlocBuilder<TabCubit, TabState>(
            builder: (context, state) {
              return EventList(
                selectedCategory: state.selectedCategory,
              );
            },
          ),
        ],
      ),
    );
  }
}
