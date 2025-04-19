import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProjectCardTablet extends StatelessWidget {
  const CustomProjectCardTablet({
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            imageUrl,
            width: 360,
            height: 350,
          ),
        ),
        SizedBox(width: 2.w,),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            Text(
                text,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 60,
              height: 35,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(20, 40, 80, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  date,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 22,),
            SizedBox(
              width: 180.w,
              child: Text(
                des,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 100,),
          ],
        ),
      ],
    );
  }
}
