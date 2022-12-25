import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lucely_app/common/color_palettes.dart';
import 'package:lucely_app/common/sizing.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gap/gap.dart';
import 'package:lucely_app/widgets/button/primary_button.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<StatefulWidget> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
  }

  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/splash1.png',
      'assets/images/splash2.png',
      'assets/images/splash3.png',
    ];
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.only(right: 10.0),
      //       child: TextButton(
      //         child: Text('Lewati',
      //             style: Theme.of(context)
      //                 .textTheme
      //                 .bodySmall!
      //                 .copyWith(fontSize: 14)),
      //         // onPressed: () => Navigator.push(context, MaterialPageRoute(
      //         //   builder: (context) {
      //         //     return SecondPage();
      //         //   },
      //         // )),
      //         onPressed: () => {
      //           setState(() {
      //             _current = 2;
      //           })
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(spacing * 3),
          child: Container(
            // height: MediaQuery.of(context).size.height - spacing * 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CarouselSlider(
                    items: imgList
                        .map((item) => Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 260,
                                    // height: 200,
                                    child: Image.asset(item),
                                  ),
                                  const Gap(spacing * 3),
                                  if (item == 'assets/images/splash1.png')
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('Upgrade Diri',
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(fontSize: 20)),
                                        const Gap(spacing),
                                        Container(
                                          width: 220,
                                          child: Text(
                                              'Meningkatkan diri dengan membaca intisari buku-buku terbaik dalam waktu kurang dari 20 menit',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(height: 1.5)),
                                        ),
                                      ],
                                    ),
                                  if (item == 'assets/images/splash2.png')
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('Self-help',
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(fontSize: 20)),
                                        const Gap(spacing),
                                        Container(
                                          width: 240,
                                          child: Text(
                                              'Dengarkan inspirasi untuk kesejahteraan mental yang lebih baik dalam menjalani hari',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(height: 1.5)),
                                        ),
                                      ],
                                    ),
                                  if (item == 'assets/images/splash3.png')
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text('Menjadi Lebih Baik',
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(fontSize: 20)),
                                        const Gap(spacing),
                                        Container(
                                          width: 220,
                                          child: Text(
                                              'Dapatkan inspirasi dengan diskusi langsung dari para psikolog dan life mentor experts yang terpecaya',
                                              textAlign: TextAlign.center,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(height: 1.5)),
                                        ),
                                      ],
                                    ),
                                ],
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        // height: 470,
                        aspectRatio: 1.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        })),
                const Gap(spacing * 1),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 7.0,
                          height: 7.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : blue)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList()),
                const Gap(spacing * 3),
                PrimaryButton(
                  isLoading: false,
                  onPressed: () => {},
                  // onPressed: () => goToHome(),
                  title: 'Buat Akun',
                  type: ButtonType.primary,
                ),
                const Gap(spacing * 1.8),
                PrimaryButton(
                  isLoading: false,
                  onPressed: () => {},
                  // onPressed: () => goToHome(),
                  title: 'Masuk',
                  type: ButtonType.secondary,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
