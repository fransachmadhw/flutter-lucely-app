import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/font_size.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';

class SuccessDialog extends StatelessWidget {
  final Function onPressed;
  final String? title, subTitle;
  final String image;
  const SuccessDialog(
      {super.key,
      required this.onPressed,
      this.title,
      this.subTitle,
      required this.image});

  @override
  Widget build(BuildContext context) {
    FontSize().init(context);
    return AlertDialog(
      title: Text(
        title ?? '',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: FontSize.blockSizeHorizontal! * 4.2),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image(image: AssetImage(image)),
          ),
          Gap(spacing * 2),
          Text(
            subTitle ?? "",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: FontSize.blockSizeHorizontal! * 3),
          ),
          Gap(spacing * 2),
          PrimaryButton(
              isLoading: false,
              onPressed: onPressed,
              title: "OK",
              type: ButtonType.primary),
        ],
      ),
    );
  }
}
