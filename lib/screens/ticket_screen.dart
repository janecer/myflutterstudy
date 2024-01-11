import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myflutterstudy/screens/ticket_view.dart';
import 'package:myflutterstudy/utils/app_info_list.dart';
import 'package:myflutterstudy/utils/app_layout.dart';
import 'package:myflutterstudy/widgets/column_layout.dart';
import 'package:myflutterstudy/widgets/layout_builder_widget.dart';
import 'package:myflutterstudy/widgets/ticket_tabs.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(20)),
              Text(
                "Tickets",
                style: Styles.headlineStyle1,
              ),
              Gap(AppLayout.getHeight(10)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(10)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: Column(
                    children: [
                      Gap(AppLayout.getHeight(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: "Flutter DB",
                            secondText: "Passenger",
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: "5211 265869",
                            secondText: "passport",
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(10)),
                      AppLayoutBuilderWidget(
                        isColor: false,
                        sections: 15,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.start,
                            firstText: "388888 99999",
                            secondText: "Number of E-ticket",
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: "B2SG28",
                            secondText: "Booking code",
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(10)),
                      AppLayoutBuilderWidget(
                        isColor: false,
                        sections: 15,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 8,
                                  ),
                                  Text("*** 2462")
                                ],
                              ),
                              Gap(5),
                              Text(
                                "Payment method",
                                style: Styles.headlineStyle4,
                              )
                            ],
                          ),
                          AppColumnLayout(
                            alignment: CrossAxisAlignment.end,
                            firstText: "\$254",
                            secondText: "Price",
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Gap(AppLayout.getHeight(10)),
                    ],
                  )),
              //bar code
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(AppLayout.getHeight(21)),
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)))),
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getHeight(10)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: "https://github.com/martinovovo",
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(10)),
              Container(
                padding: EdgeInsets.only(right: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              )
            ],
          ),
          Positioned(
              left: AppLayout.getHeight(20),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              )),
          Positioned(
              right: AppLayout.getHeight(20),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Styles.textColor, width: 2)),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: Styles.textColor,
                ),
              ))
        ],
      ),
    );
  }
}
