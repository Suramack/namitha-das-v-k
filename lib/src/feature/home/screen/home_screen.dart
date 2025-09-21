import 'package:namitha_das_v_k/app_config.dart';
import 'package:namitha_das_v_k/src/common/brand_font_size.dart';
import 'package:namitha_das_v_k/src/common/brand_rounded_container.dart';
import 'package:namitha_das_v_k/src/common/brand_text.dart';
import 'package:namitha_das_v_k/src/feature/home/provider/home_provider.dart';
import 'package:namitha_das_v_k/src/feature/home/widget/about_wdget.dart';
import 'package:namitha_das_v_k/src/feature/home/widget/contact_widget.dart';
import 'package:namitha_das_v_k/src/feature/home/widget/home_widget.dart';
import 'package:namitha_das_v_k/src/feature/home/widget/skill_widget.dart';
import 'package:namitha_das_v_k/util/enum/menu_enum.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late HomeNotifierProvider provider;

  Widget getWiget() {
    switch (provider.selectedMenu) {
      case MenuEnum.home:
        return HomeWidget();
      case MenuEnum.skills:
        return SkillWidget();
      case MenuEnum.contact:
        return ContactWidget();
      case MenuEnum.aboutMe:
        return AboutWdget();
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(homeProvider);
    provider = ref.read(homeProvider.notifier);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        actions: [
          RoundedContainer(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: BrandText.secondary(
                data: 'HOME',
                fontSize: BrandFontSize.size16,
                fontColor: Colors.white,
              ),
            ),
            onTap: () {
              provider.setSelectedMenu = MenuEnum.home;
            },
          ),
          SizedBox(width: 16),
          RoundedContainer(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: BrandText.secondary(
                data: 'SKILLS',
                fontSize: BrandFontSize.size16,
                fontColor: Colors.white,
              ),
            ),
            onTap: () {
              provider.setSelectedMenu = MenuEnum.skills;
            },
          ),
          SizedBox(width: 16),
          RoundedContainer(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: BrandText.secondary(
                data: 'CONTACT',
                fontSize: BrandFontSize.size16,
                fontColor: Colors.white,
              ),
            ),
            onTap: () {
              provider.setSelectedMenu = MenuEnum.contact;
            },
          ),
          SizedBox(width: 16),
          RoundedContainer(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: BrandText.secondary(
                data: 'ABOUT ME',
                fontSize: BrandFontSize.size16,
                fontColor: Colors.white,
              ),
            ),
            onTap: () {
              provider.setSelectedMenu = MenuEnum.aboutMe;
            },
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(homeUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(children: [getWiget()]),
      ),
    );
  }
}
