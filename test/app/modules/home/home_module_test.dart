import 'package:esig/app/modules/posts/submodules/home/home_module.dart';
import 'package:esig/app/modules/posts/submodules/home/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:modular_test/modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    initModule(HomeModule());
  });
}
