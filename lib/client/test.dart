import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({required this.onChanged, Key? key}) : super(key: key);

  final Function(String) onChanged;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  // var sizeSelectionWidgets = product.sizes
    //         ?.map(
    //           (s) => Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //             child: GestureDetector(
    //               onTap: () {
    //                 setSelectedSize(s);
    //               },
    //               child: Container(
    //                 height: 42,
    //                 width: 38,
    //                 decoration: BoxDecoration(
    //                   color: selectedSize.value == s
    //                       ? Theme.of(context).colorScheme.secondary
    //                       : null,
    //                   border: Border.all(
    //                     color: Colors.grey[350]!,
    //                     width: 1.25,
    //                   ),
    //                   borderRadius: BorderRadius.circular(8),
    //                 ),
    //                 child: Center(
    //                   child: Text(
    //                     s,
    //                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
    //                         color:
    //                             selectedSize.value == s ? Colors.white : null),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         )
    //         .toList() ??
    //     [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.circular(18),
      ),
      child: TextField(
        onChanged: widget.onChanged,
        controller: _textEditingController,
        textAlignVertical: TextAlignVertical.center,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
          contentPadding:
              kIsWeb ? const EdgeInsets.only(top: 10) : EdgeInsets.zero,
          prefixIconConstraints: const BoxConstraints(
            minHeight: 36,
            minWidth: 36,
          ),
          prefixIcon: const Icon(
            Icons.search,
          ),
          hintText: 'Search for a product',
          suffixIconConstraints: const BoxConstraints(
            minHeight: 36,
            minWidth: 36,
          ),
          suffixIcon: IconButton(
            constraints: const BoxConstraints(
              minHeight: 36,
              minWidth: 36,
            ),
            splashRadius: 24,
            icon: const Icon(
              Icons.clear,
            ),
            onPressed: () {
              _textEditingController.clear();
              widget.onChanged(_textEditingController.text);
              FocusScope.of(context).unfocus();
            },
          ),
        ),
      ),
    );
  }
}
