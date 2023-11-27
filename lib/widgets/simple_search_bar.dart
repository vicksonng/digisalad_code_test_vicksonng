import 'package:digisalad_code_test_vicksonng/config/messages.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_padding.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:flutter/material.dart';

class SimpleSearchBar extends StatefulWidget {
  const SimpleSearchBar({
    super.key,
    required this.onSubmitted,
  });

  final Function(String value) onSubmitted;

  @override
  State<SimpleSearchBar> createState() => _SimpleSearchBarState();
}

class _SimpleSearchBarState extends State<SimpleSearchBar> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: controller,
      padding: const MaterialStatePropertyAll<EdgeInsets>(
        UnifiedPadding.horizontalMd,
      ),
      hintText: Messages.searchBarPlaceHolder,
      onSubmitted: widget.onSubmitted,
      trailing: [
        IconButton(
          onPressed: controller.clear,
          icon: const Icon(
            Icons.clear_rounded,
          ),
        ),
        IconButton(
          onPressed: () {
            unfocusAllNodes(context);
            widget.onSubmitted(controller.text);
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}
