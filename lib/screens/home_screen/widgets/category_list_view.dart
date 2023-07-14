import 'package:flutter/material.dart';

import 'package:food_delivery_app_practice/core/utils/utils.dart';
import 'package:food_delivery_app_practice/data.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: rh(120),
      child: ListView.builder(
        itemCount: categoryIconList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: space2x),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => setState(() {
              _selectedIndex = index;
            }),
            child: CategoryItem(
              name: name[index],
              backgroundColor: _selectedIndex == index
                  ? Colors.white
                  : const Color(0xFFF2E3DB),
              icon: Image.asset(
                categoryIconList[index],
                width: rw(35),
                height: rh(25),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.backgroundColor,
  }) : super(key: key);

  final Widget icon;
  final String name;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: space2x),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: rf(30),
            backgroundColor: backgroundColor,
            child: icon,
          ),
          SizedBox(
            height: rf(space1x),
          ),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontSize: rf(12)),
          )
        ],
      ),
    );
  }
}
