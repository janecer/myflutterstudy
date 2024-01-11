import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myflutterstudy/utils/app_layout.dart';
import 'package:myflutterstudy/utils/app_styles.dart';

import '../widgets/column_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(0)),
        children: [
          Gap(AppLayout.getHeight(30)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getHeight(86),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/jxc.jpg"))),
              ),
              Gap(AppLayout.getHeight(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headlineStyle1,
                  ),
                  Text(
                    "New-York",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(8),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100)),
                        color: Color(0XFFEF4F3)),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF526799)),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        Gap(AppLayout.getHeight(6)),
                        Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    child: Text(
                      "Edit",
                      style:
                          Styles.textStyle.copyWith(color: Styles.primaryColor),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(width: 18, color: Color(0xFF264CD2))),
                  )),
              Positioned(
                top: AppLayout.getHeight(15),
                  left: AppLayout.getHeight(20),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Icon(
                      FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor,
                      size: 27,
                    ),
                    maxRadius: 25,
                    backgroundColor: Colors.white,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "you \' get a new award",
                        style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(
                        "you have 95 flights in a year",
                        style: Styles.headlineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 16),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
          Gap(AppLayout.getHeight(15)),
          Text("Accumulated miles",style: Styles.headlineStyle2,),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(10),
                Text("192666",style: TextStyle(fontSize: 45,color: Styles.textColor,fontWeight: FontWeight.w600),),
                Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued",style: Styles.textStyle.copyWith(color:Colors.grey),),
                    Text("10 Janeary 2024",style: Styles.textStyle.copyWith(color:Colors.grey),),
                  ],
                ),
                Gap(8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "23 042",
                      secondText: "Miles",
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "Airline CO",
                      secondText: "Received from",
                    ),
                  ],
                ),
                Gap(8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "24",
                      secondText: "Miles",
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "McDonal's",
                      secondText: "Received from",
                    ),
                  ],
                ),
                Gap(8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "52 340",
                      secondText: "Miles",
                    ),
                    AppColumnLayout(
                      alignment: CrossAxisAlignment.start,
                      firstText: "Exumal",
                      secondText: "Received from",
                    ),
                  ],
                ),
                Gap(8),
                
                Text("How to get more miles",style: Styles.headlineStyle4.copyWith(color: Colors.grey),),
                Gap(8)
              ],
            ),
          )
        ],
      ),
    );
  }
}
