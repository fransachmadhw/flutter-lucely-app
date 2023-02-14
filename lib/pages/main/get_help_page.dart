import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:lucely_app/pages/main/about_page.dart';

class GetHelp extends StatelessWidget {
  const GetHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: veryLightGrey, width: 1)),
        backgroundColor: white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Iconify(MaterialSymbols.arrow_back_ios_new_rounded)),
        centerTitle: true,
        title: Text("FAQ dan Bantuan",
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700, fontSize: 15)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Gap(spacing * 3),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: spacing * 3),
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("FaQs",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14))
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/arrow_right.svg',
                          color: black,
                          width: spacing * 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // width: 200,
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: spacing * 3),
                child: ElevatedButton(
                  onPressed: () => Get.to(() => About()),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Tentang App",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14))
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/arrow_right.svg',
                          color: black,
                          width: spacing * 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // width: 200,
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: spacing * 3),
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Kebijakan Privasi",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14))
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/arrow_right.svg',
                          color: black,
                          width: spacing * 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // width: 200,
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: spacing * 3),
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Syarat & Ketentuan",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14))
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/arrow_right.svg',
                          color: black,
                          width: spacing * 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // width: 200,
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: spacing * 3),
                child: ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: Container(
                    height: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Masukan & Saran",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14))
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/arrow_right.svg',
                          color: black,
                          width: spacing * 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                // width: 200,
                height: 1,
                decoration: BoxDecoration(color: lightGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
