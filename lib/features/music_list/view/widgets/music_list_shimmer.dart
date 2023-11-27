import 'package:digisalad_code_test_vicksonng/config/constants.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_size.dart';
import 'package:digisalad_code_test_vicksonng/widgets/shimmer_wrapper.dart';
import 'package:flutter/material.dart';

class MusicListShimmer extends StatelessWidget {
  const MusicListShimmer({
    super.key,
    this.itemCount = shimmerItemCount,
  });

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return ShimmerWrapper(
      child: Column(
        children: [
          for (int i = 0; i < itemCount; i++) _musicListTileShimmer(context),
        ],
      ),
    );
  }

  Widget _musicListTileShimmer(BuildContext context) {
    return ListTile(
      title: Container(
        height: mdSize,
        color: Theme.of(context).splashColor,
      ),
      subtitle: Container(
        height: mdSize,
        width: xlSize,
        color: Theme.of(context).splashColor,
      ),
      leading: Container(
        height: xlSize,
        width: xlSize,
        color: Theme.of(context).splashColor,
      ),
      trailing: Container(
        height: mdSize,
        width: mdSize,
        color: Theme.of(context).splashColor,
      ),
    );
  }
}
