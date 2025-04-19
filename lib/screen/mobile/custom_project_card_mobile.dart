import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProjectCardMobile extends StatelessWidget {
  const CustomProjectCardMobile({
    super.key,
    required this.imageUrl,
    required this.text,
    required this.date,
    required this.des
  });
  final String imageUrl;
  final String text;
  final String date;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              imageUrl,
              width: 560,
              height: 350,
            ),
          ),
          const SizedBox(height: 17,),
          Text(
              text,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16,),
          Container(
            width: 62.w,
            height: 35.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(20, 40, 80, 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                    date,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
          ),
          const SizedBox(height: 25,),
          Text(
              des,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 17,),
          const Divider(),
        ],
      ),
    );
  }
}
