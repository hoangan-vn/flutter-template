import 'package:dominic_flutter_template/src/features/authentication/widgets/line_divider.dart';
import 'package:dominic_flutter_template/src/localization/localization_utils.dart';
import 'package:dominic_flutter_template/src/themes/emoji.dart';
import 'package:dominic_flutter_template/widgets/scaffold/scaffold.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return XScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('${S.text.sign_signin_title} ${AppEmoji.hand}'),
          const LineDivider(),
        ],
      ),
    );
  }
}
