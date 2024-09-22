import 'package:flutter/material.dart';
import 'package:linked_in_clone/ui/screens/home/components/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          HomeTopBar()
        ],
      ),
    );
  }
}
