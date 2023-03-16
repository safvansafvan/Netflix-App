import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_npp/core/contants.dart';
import 'package:netflix_npp/presentation/search/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(0.4),
              prefixIcon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
              suffixIcon: const Icon(
                CupertinoIcons.xmark_circle_fill,
                color: Colors.grey,
              ),
              style: const TextStyle(color: Colors.white),
            ),
            cHeight,
          
            // Expanded(child: SearchIdlewidget()),
             Expanded(child: SearchResultWidget())
          ],
        ),
      ),
    ));
  }
}
