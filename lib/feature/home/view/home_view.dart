// ignore_for_file: public_member_api_docs

import 'package:architecture_template/product/init/config/app_environment.dart';
import 'package:architecture_template/product/init/language/locale_keys.g.dart';
import 'package:architecture_template/product/init/product_localization.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part 'widget/home_app_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ProductLocalization.updateLang(context, Locales.tr);
            },
            child: Text(
              LocaleKeys.general_button_save,
              style: Theme.of(context).textTheme.bodyLarge,
            ).tr(
              args: ['Naber'],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              AppEnvironmentType.baseUrl.value;
            },
            child: Text(
              AppEnvironmentType.baseUrl.value,
            ).tr(
              args: ['Naber'],
            ),
          ),
        ],
      ),
    );
  }
}
