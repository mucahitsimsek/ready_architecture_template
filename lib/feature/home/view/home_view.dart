// ignore_for_file: public_member_api_docs

import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/product/service/login_service.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gen/gen.dart';
import 'package:widgets/widgets.dart';

part 'widget/home_app_bar.dart';

@RoutePage(name: 'HomeRoute')
class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView>
    with LoadingMixin, HomeViewMixin {
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
                final deg = ref.read(loginServiceProvider);
                users = await deg.users();
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
