import 'package:flutter_bloc/flutter_bloc.dart';

class TabState {
  final int selectedIndex;
  final String selectedCategory;

  TabState({required this.selectedIndex, required this.selectedCategory});
}

class TabCubit extends Cubit<TabState> {
  TabCubit() : super(TabState(selectedIndex: 0, selectedCategory: 'All'));

  // Method to change the selected tab and category
  void changeTab(int index, String category) {
    emit(TabState(selectedIndex: index, selectedCategory: category));
  }
}
