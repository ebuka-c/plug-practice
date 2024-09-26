import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_plug/constants/colors.dart';
import 'package:global_plug/constants/custom_textstyles.dart';
import 'package:global_plug/constants/images.dart';
import 'package:global_plug/page_routes/route_name.dart';
import 'package:global_plug/utilities/extensions.dart';
import 'package:global_plug/widgets/headers/custom_appbar.dart';
import 'package:global_plug/widgets/iconBadge/icon_badge.dart';

var top;

SliverAppBar sliverAppBar = SliverAppBar(
    pinned: true,
    automaticallyImplyLeading: false,
    actions: [Container()],
    expandedHeight: 127.0.h,
    shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
    flexibleSpace: LayoutBuilder(builder: (context, constraints) {
      top = constraints.biggest.height;
      return FlexibleSpaceBar(
          title: top < 130
              ? Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Welcome to your GPS account',
                            style: bodyTen.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.colorWhite)),
                        //
                        Row(children: [
                          IconBadge(
                              icon: Icons.notifications_none_outlined,
                              onTap: () {
                                Get.toNamed(AppRoutes.notificationsScreen);
                              }),
                          SizedBox(width: 15.62.w),
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.settingsScreen),
                            child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: AppColors.greyColor,
                                    border:
                                        Border.all(color: AppColors.colorWhite),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            AppImages.profileHeader)),
                                    shape: BoxShape.circle)),
                          )
                        ])
                      ]))
              : null,
          background: const CustomAppbar());
    }));
