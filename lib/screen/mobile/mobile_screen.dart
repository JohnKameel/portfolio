import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'featured_work_mobile_section.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 83),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: 170,
                  height: 170,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(237, 247, 250, 1),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(),
                  width: 160,
                  height: 160,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('asset/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Hello , I am John',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Flutter',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Developer',
            style: TextStyle(
              fontSize: 32.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Passionate Flutter Developer skilled in responsive UI, state management (Riverpod/BLoC), SQLite, RESTful APIs, and Firebase integration',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 4,
            ),
          ),
          const SizedBox(height: 27,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(208.w, 87.h),
              backgroundColor: const Color.fromRGBO(255, 100, 100, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Download Resume',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 47,),
          Text(
            'Featured Works',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 20,),
          FeaturedWorkMobileSection(),
        ],
      ),
    );
  }
}
