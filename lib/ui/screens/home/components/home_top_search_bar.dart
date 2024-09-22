import 'package:flutter/material.dart';

class HomeTopSearchBar extends StatelessWidget {
  const HomeTopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5)
      ),
      child: const ColoredBox(
        color: Color(0xffedf3f8),
        child: SizedBox(
          height: 35,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 8,),

              Icon(
                Icons.search_sharp,
                color: Colors.black54,
              ),

              Flexible(
                flex: 1,
                child: Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w300
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
