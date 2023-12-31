import 'package:digisalad_code_test_vicksonng/styles/unified_padding.dart';
import 'package:digisalad_code_test_vicksonng/utils/common_utils.dart';
import 'package:flutter/material.dart';

class SimpleSearchBar extends StatefulWidget {
  const SimpleSearchBar({
    super.key,
    required this.onSubmitted,
    this.placeholder,
  });

  final Function(String value) onSubmitted;
  final String? placeholder;

  @override
  State<SimpleSearchBar> createState() => _SimpleSearchBarState();
}

class _SimpleSearchBarState extends State<SimpleSearchBar> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: controller,
      padding: const MaterialStatePropertyAll<EdgeInsets>(
        UnifiedPadding.horizontalMd,
      ),
      hintText: widget.placeholder,
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
