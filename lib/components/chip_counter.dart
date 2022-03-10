import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/image_names.dart';

class ChipCounter extends HookConsumerWidget {
  final int chipCount;
  const ChipCounter(this.chipCount);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30.00),
      ),
      child: Row(
        children: [
          ChipImage(),
          Text(chipCount.toString()),
        ],
      ),
    );
  }
}
