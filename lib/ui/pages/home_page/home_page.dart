import 'package:coffeshop/ui/themes/color_palatte.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final statusBarHeight = MediaQuery.paddingOf(context).top;
    final screenSize = MediaQuery.sizeOf(context);
    final bannerHeight = 260 + statusBarHeight;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: bannerHeight,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    bottom: 80,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: .bottomCenter,
                          end: .topCenter,
                          colors: [Color(0xFF050505), Colors.transparent],
                          stops: [.7, 1.0],
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 80,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: .topRight,
                          end: .bottomLeft,
                          colors: [Color(0xFF111111), Color(0xFF313131)],
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text(
                                'Location',
                                style: TextStyle(
                                  color: ColorPalatte.lighter,
                                  fontSize: 12,
                                ),
                              ),
                              Row(
                                spacing: 4,
                                children: [
                                  Text(
                                    'Bilzen, Tanjungbalai',
                                    style: TextStyle(
                                      color: ColorPalatte.white,
                                      fontSize: 14,
                                      fontWeight: .w600,
                                    ),
                                  ),
                                  RotatedBox(
                                    quarterTurns: -1,
                                    child: Icon(
                                      Icons.chevron_left_rounded,
                                      color: ColorPalatte.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                          child: Row(
                            spacing: 16,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 52,
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: ColorPalatte.greyNormalHover,
                                  ),
                                  child: Row(
                                    spacing: 8,
                                    crossAxisAlignment: .center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/ic_search.svg',
                                        height: 20,
                                        width: 20,
                                        semanticsLabel: 'Search Icons',
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            hintText: 'Search coffe',
                                            contentPadding: .zero,
                                            hintStyle: TextStyle(
                                              color: ColorPalatte.lighter,
                                            ),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},

                                child: Container(
                                  height: 52,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: ColorPalatte.normal,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      'assets/icons/ic_filter.svg',
                                      height: 20,
                                      width: 20,
                                      semanticsLabel: 'Filter Icons',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/images/img_banner.png',
                              fit: BoxFit.fitWidth,
                              width: screenSize.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
