import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/widgets/section/padding.dart';
import 'package:flutter/material.dart';

class LineDivider extends StatelessWidget {
  const LineDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return XPadding.horizontal(
      horizontal: 8,
      child: Row(
        children: [
          const Expanded(child: Divider()),
          XPadding.horizontal(
            horizontal: 8,
            child: Text(
              S.text.sign_divider,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}
