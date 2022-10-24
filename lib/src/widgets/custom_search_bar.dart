import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mia/main.dart';


class CustomSearchBar extends ConsumerStatefulWidget{
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  CustomSearchBarState createState() => CustomSearchBarState();
}

class CustomSearchBarState extends ConsumerState<CustomSearchBar> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(
        CupertinoIcons.search,
        color: Colors.white,
        size: 28,
      ),
      title: TextField(
        decoration: const InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontStyle: FontStyle.italic,
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
        onChanged: (value) =>
        ref.read(searchQueryProvider.notifier).state = value,
      ),
    );
  }
}