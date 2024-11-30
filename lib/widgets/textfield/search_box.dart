import 'package:flutter/material.dart';
import 'package:townsquare/theme/box_decorations.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: AppBoxDecorations.whiteBox,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: const TextField(
                textAlignVertical: TextAlignVertical.center,
                style: TextStyle(height: 1.0),
                decoration: InputDecoration(
                  hintText: 'What do you feel like doing?',
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            const Icon(
              Icons.search,
              color: Colors.black54,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}
