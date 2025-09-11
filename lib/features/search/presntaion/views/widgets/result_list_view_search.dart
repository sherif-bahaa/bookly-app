import 'package:bookly_app/features/home/prsentation/views/widgets/bestseller_items.dart';
import 'package:flutter/material.dart';

class ResultListViewSearch extends StatelessWidget {
  const ResultListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const BestsellerItems(),
        );
      },
    );
  }
}
