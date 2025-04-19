import 'package:appbar/screen/tablet/featured_work_tablet_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 90, left: 140,),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 200,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello , I am John',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 80.h,),
                      SizedBox(
                        width: 250.w,
                        child: Text(
                          'Passionate Flutter Developer skilled in responsive UI, state management (Riverpod/BLoC), SQLite, RESTful APIs, and Firebase integration',
                          style: TextStyle(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),

                      // Text(
                      //   'Passionate Flutter Developer skilled in responsive UI,',
                      //   style: TextStyle(
                      //     fontSize: 8.sp,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      // ),
                      // Text(
                      //   ' state management (Riverpod/BLoC), SQLite, RESTful APIs, and Firebase integration',
                      //   style: TextStyle(
                      //     fontSize: 8.sp,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(width: 15.w,),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      width: 310,
                      height: 310,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(237, 247, 250, 1),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(),
                      width: 290,
                      height: 290,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('asset/profile.jpg'),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(90.w, 90.h),
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
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
              ),
            ),
            const SizedBox(height: 112,),
            Text(
              'Featured works',
              style: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 11,),
            FeaturedWorkTabletSection(),
          ],
        ),
      ),
    );
  }
}
