import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            context.isPhone
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'Please Sign In',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Start Journey With Us',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                : const SizedBox(),
            Image.asset(
              'assets/images/login.png',
              height: Get.height * 0.5,
            ),
            FloatingActionButton.extended(
              onPressed: () => Get.toNamed(Routes.LOGIN),
              label: const Text('Sign In With Google'),
            )
          ],
        ),
      ),
    );
  }
}
