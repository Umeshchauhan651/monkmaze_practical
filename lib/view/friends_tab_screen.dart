import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkmaze_practical/utility/comman_button.dart';
import 'package:monkmaze_practical/utility/constant_file.dart';
import 'package:monkmaze_practical/utility/size_config.dart';

import 'friendstab_controller.dart';

class FriendsTabScreen extends StatelessWidget {
  final FriendsTabController controller = Get.put(FriendsTabController());

  FriendsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE,
      appBar: appbar(),
      body: Column(
        children: [
          topBtnList(),
          verticalSpaceSmall,
          friendsListTextWidget(),
          verticalSpaceSmall,
          Expanded(child: friendsListWidget()),
        ],
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      backgroundColor: AppColors.WHITE,
      elevation: 0,
      centerTitle: true,
      title: Text(
        STR_COMMON.FRIENDS,
        textAlign: TextAlign.center,
        style: GoogleFonts.manrope(
          fontSize: FontSize.FONT_SIZE_20,
          fontWeight: FontWeight.w600,
          color: AppColors.BLACK,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: HexColor("#19191A"),
            size: heightMQ(22),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget friendsListTextWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            STR_COMMON.FRN_REQUEST,
            style: GoogleFonts.manrope(
              fontSize: FontSize.FONT_SIZE_20,
              fontWeight: FontWeight.w700,
              color: AppColors.BLACK,
            ),
          ),
          horizontalSpaceTiny,
          Text(
            STR_COMMON.LIST_COUNT,
            style: GoogleFonts.manrope(
              fontSize: FontSize.FONT_SIZE_20,
              fontWeight: FontWeight.w700,
              color: AppColors.RED,
            ),
          ),
        ],
      ),
    );
  }

  Widget topBtnList() {
    return SizedBox(
      height: heightMQ(36),
      width: widthMQ(345),
      child: ListView.builder(
        itemCount: controller.menuItems.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: heightMQ(30),
            padding: const EdgeInsets.all(3),
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: HexColor("#019BFD"), width: 1),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    controller.menuItems[index].img,
                    height: heightMQ(50),
                    fit: BoxFit.cover,
                  ),
                ),
                verticalSpaceSmall,
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Text(
                    controller.menuItems[index].title,
                    style: GoogleFonts.manrope(
                      fontSize: FontSize.FONT_SIZE_12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.BLACK,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget friendsListWidget() {
    return ListView.builder(
      itemCount: 10,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImgName.PROFILE_IMG,
                height: heightMQ(72),
                fit: BoxFit.cover,
              ),
              horizontalSpaceSmall,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: widthMQ(250),
                    //color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          STR_COMMON.RASHID_BATHHI,
                          style: GoogleFonts.manrope(
                            fontSize: FontSize.FONT_SIZE_14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.BLACK,
                          ),
                        ),
                        //   const Spacer(),
                        Text(
                          STR_COMMON.D_STR,
                          style: GoogleFonts.manrope(
                            fontSize: FontSize.FONT_SIZE_12,
                            fontWeight: FontWeight.w500,
                            color: HexColor("#767C8C"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceSmall,
                  Row(
                    children: [
                      Image.asset(
                        ImgName.MUTUAL_FND_IMG,
                        height: heightMQ(25),
                        fit: BoxFit.cover,
                      ),
                      horizontalSpaceRegular,
                      Text(
                        STR_COMMON.MUTUAL_FND,
                        style: GoogleFonts.manrope(
                          fontSize: FontSize.FONT_SIZE_12,
                          fontWeight: FontWeight.w500,
                          color: HexColor("#767C8C"),
                        ),
                      ),
                    ],
                  ),
                  verticalSpaceSmall,
                  Row(
                    children: [
                      confirmBtn(),
                      horizontalSpaceSmall,
                      deleteBtn(),
                    ],
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }

  Widget confirmBtn() {
    return SizedBox(
      width: widthMQ(120),
      child: CustomContinueNextButton(
        buttonText: STR_COMMON.CONFIRM,
        onTap: () {},
        elevation: 0,
        textStyle: GoogleFonts.manrope(
          fontSize: FontSize.FONT_SIZE_14,
          fontWeight: FontWeight.w600,
          color: AppColors.WHITE,
        ),
      ),
    );
  }

  Widget deleteBtn() {
    return SizedBox(
      width: widthMQ(120),
      child: CustomContinueNextButton(
        buttonText: STR_COMMON.DELETE,
        elevation: 0,
        color: HexColor("#E6E6E6"),
        onTap: () {},
        textStyle: GoogleFonts.manrope(
          fontSize: FontSize.FONT_SIZE_14,
          fontWeight: FontWeight.w600,
          color: AppColors.BLACK,
        ),
      ),
    );
  }
}
