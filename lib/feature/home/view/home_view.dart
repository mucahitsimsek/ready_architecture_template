// ignore_for_file: public_member_api_docs

import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:widgets/widgets.dart';

part 'widget/home_app_bar.dart';

@RoutePage(name: 'HomeRoute')
final class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with LoadingMixin, HomeViewMixin {
  List<User> users = <User>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
              onPressed: () async {
                users = await loginService.users();
                setState(() {});
              },
              child: const Text('get'),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: users.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(users[index].body!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
