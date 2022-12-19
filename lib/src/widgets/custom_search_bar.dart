import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers.dart';


class CustomSearchBar extends ConsumerStatefulWidget{
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  CustomSearchBarState createState() => CustomSearchBarState();
}

class CustomSearchBarState extends ConsumerState<CustomSearchBar> {


  @override
  Widget build(BuildContext context) {
    final viewIndex = ref.watch(selectedViewIndex);
    return viewIndex != 1 ? ListTile(
      title: TextField(
        decoration: const InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontStyle: FontStyle.italic,
          ),
          border: InputBorder.none,
        ),
        autofocus:true,
        style: const TextStyle(
          color: Colors.white,
        ),
        onChanged: (value) =>
        ref.read(searchQueryProvider.notifier).state = value,
      ),
    ) : Container();
  }
}