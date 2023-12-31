import 'package:flutter/material.dart';
import '../widgets/home_widget/hm_app_bar.dart';
import '../widgets/home_widget/hm_mid_bottom_content.dart';
import '../widgets/home_widget/hm_top_content.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.1),
      body: SafeArea(
        child: ListView(
          children: const [
            HmAppBar(),
            HmTopContent(),
            HmMidBottomContent(),
          ],
        ),
      ),
    );
  }
}
