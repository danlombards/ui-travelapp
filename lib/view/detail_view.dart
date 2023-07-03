import 'package:flutter/material.dart';
import '../model/sights_model.dart';
import '../widgets/detail_widget/dt_booking_button.dart';
import '../widgets/detail_widget/dt_bottom_detail.dart';
import '../widgets/detail_widget/dt_top_image.dart';

class DetailView extends StatelessWidget {
  final Sight data;
  const DetailView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: DtTopImage(
              imgUrl: data.imgUrl ?? 'default.jpg',
              heroTag: data.heroTag,
            ),
          ),
          Positioned(
            top: 410,
            left: 0,
            right: 0,
            child: DtBottomDetail(
              title: data.name,
              price: data.price.toString(),
              hour: data.hours.toString(),
              rating: data.rating.toString(),
              description: data.description,
            ),
          ),
        ],
      ),
      floatingActionButton: const DtBookingButton(),
    );
  }
}
