import 'package:dominic_flutter_template/gen/assets.gen.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/src/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class XStateEmptyWidget extends StatelessWidget {
  const XStateEmptyWidget({
    super.key,
    this.title,
    this.body,
    this.iconSvg,
    this.bottom,
  });
  final String? title;
  final String? body;
  final String? iconSvg;
  final Widget? bottom;

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: 15);
    const padding = EdgeInsets.symmetric(horizontal: 20);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(iconSvg ?? Assets.svgs.stateEmpty),
       space,
        Container(
          padding: padding,
          child: Text(
            title ?? S.text.common_list_empty_title,
            textAlign: TextAlign.center,
            style: AppStyles.title,
          ),
        ),
        if (body?.isNotEmpty == true) ...[
         space,
          Container(
            padding: padding,
            child: Text(
              body!,
              textAlign: TextAlign.center,
              style: AppStyles.body,
            ),
          ),
        ],
        if (bottom != null) ...[
         space,
          Padding(
            padding: padding,
            child: bottom!,
          ),
        ],
      ],
    );
  }
}
