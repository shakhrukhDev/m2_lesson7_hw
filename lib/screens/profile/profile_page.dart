import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_lesson8/utils/app_colors.dart';
import 'package:m2_lesson8/utils/app_icons.dart';
import 'package:m2_lesson8/utils/app_images.dart';
import 'package:m2_lesson8/utils/app_string.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                Image.asset(AppImages.ellips),
                SvgPicture.asset(AppIcons.backIcon)
              ]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Image.asset(AppImages.ellips),
                    SvgPicture.asset(AppIcons.bagIcon)
                  ]),
            ),
          ],
          pinned: true,
          expandedHeight: 370,
          flexibleSpace: FlexibleSpaceBar(
              background: Stack(
            fit: StackFit.expand,
            children: [Image.asset(AppImages.sliverLogo, fit: BoxFit.cover)],
          )),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      AppString.printed,
                      style: TextStyle(
                          color: AppColors.C_8F959E,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Text(
                      AppString.price,
                      style: TextStyle(
                          color: AppColors.C_8F959E,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      AppString.fleece,
                      style: TextStyle(
                          color: AppColors.C_1D1E20,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      "\$99",
                      style: TextStyle(
                          color: AppColors.C_1D1E20,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                          color: AppColors.C_F5F6FA,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: Image.asset(AppImages.modelImage_1).image,
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                          color: AppColors.C_F5F6FA,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: Image.asset(AppImages.modelImage_2).image,
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                          color: AppColors.C_F5F6FA,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: Image.asset(AppImages.modelImage_3).image,
                            fit: BoxFit.fill,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                          color: AppColors.C_F5F6FA,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: Image.asset(AppImages.modelImage_4).image,
                            fit: BoxFit.fill,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      AppString.size,
                      style: TextStyle(
                          color: AppColors.C_1D1E20,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      AppString.sizeGuide,
                      style: TextStyle(
                          color: AppColors.C_8F959E,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_F5F6FA,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "S",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: AppColors.C_1D1E20),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_F5F6FA,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "M",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: AppColors.C_1D1E20),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_F5F6FA,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "L",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: AppColors.C_1D1E20),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_F5F6FA,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "XL",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: AppColors.C_1D1E20),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.C_F5F6FA,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "2XL",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: AppColors.C_1D1E20),
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  AppString.description,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: AppColors.C_1D1E20),
                ),
                SizedBox(height: 15,),
                Text(AppString.read, style: TextStyle(
                  color: AppColors.C_8F959E,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text(
                      AppString.reviews,
                      style: TextStyle(
                          color: AppColors.C_1D1E20,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                      AppString.view,
                      style: TextStyle(
                          color: AppColors.C_8F959E,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
