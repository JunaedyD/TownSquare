import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:townsquare/theme/colors.dart';
import 'package:townsquare/theme/text_style.dart';

import '../../state_management/category_picker.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubit, TabState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildTabWithIcon('', 0, Icons.filter_list),
              _buildTab('All', 0, context),
              _buildTab('Sports', 1, context),
              _buildTab('Food', 2, context),
              _buildTab('Kids', 3, context),
              _buildTab('Creative', 4, context),
            ],
          ),
        ),
      );
    });
  }



  Widget _buildTabWithIcon(String label, int index, IconData icon) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: AppColors.lightLavender, 
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon/filter.png',
              height: 24,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String label, int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        String category = label == 'All' ? 'All' : label; 
        BlocProvider.of<TabCubit>(context).changeTab(index, category);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: context.watch<TabCubit>().state.selectedIndex == index
              ? AppColors.lavender
              : AppColors.lightLavender, 
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            label,
            style: AppTextStyles.body2
          ),
        ),
      ),
    );
  }
}
