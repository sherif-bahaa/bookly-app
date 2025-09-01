import 'package:bookly_app/features/home/prsentation/views/widgets/custome_appbar.dart';
import 'package:bookly_app/features/home/prsentation/views/widgets/custome_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [CustomeAppbar(), CustomListView()]),
    );
  }
}
