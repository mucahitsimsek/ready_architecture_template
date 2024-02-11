import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/product/service/login_service.dart';
import 'package:architecture_template/product/state/container/product_state_items.dart';
import 'package:flutter/material.dart';

///
mixin HomeViewMixin on State<HomeView> {
  late LoginService loginService;
  @override
  void initState() {
    super.initState();
    loginService = LoginService(ProductStateItems.networkManager);
  }
}
