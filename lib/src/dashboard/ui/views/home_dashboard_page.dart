import 'package:consap_agent_app/src/dashboard/utils/constant_string.dart';
import 'package:consap_agent_app/src/dashboard/utils/constant_url.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeDashboardPage extends StatelessWidget {
  static const String route = 'HomeDashboardPage';

  final compactCurrencyFormatter = NumberFormat.compactCurrency(
    locale: 'en-SG',
    symbol: 'S\$ ',
  );

  final currencyFormatter = NumberFormat.currency(
    locale: 'en-SG',
    symbol: 'S\$ ',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, John!'),
        leading: IconButton(
          icon: Icon(CupertinoIcons.text_alignleft),
          onPressed: () {},
        ),
        actions: [
          Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.only(
              bottom: 5,
              top: 5,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
              image: DecorationImage(
                image: NetworkImage(ConstantUrl.placeholderImage),
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10),
        children: [
          /// TOP MONTH TEXT
          Padding(
            padding: const EdgeInsets.only(
              left: 35,
              top: 10,
              bottom: 20,
            ),
            child: Text(
              DateFormat('MMM yyyy').format(DateTime.now()).toUpperCase() +
                  ' TOP APE CLOSED',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          /// TOP APE LIST VIEW
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 35),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red,
                          width: 2.0,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(ConstantUrl.placeholderImage),
                      ),
                    ),
                    Positioned(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: Text(
                              compactCurrencyFormatter.format(500000),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text('John Doe'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),

          /// HIGHLIGHT CARD
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: PhysicalModel(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              elevation: 8.0,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MY ACHIEVEMENT - ' +
                          DateFormat('MMM yyyy')
                              .format(DateTime.now())
                              .toUpperCase(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircularPercentIndicator(
                          radius: 120,
                          lineWidth: 10.0,
                          percent: 0.8,
                          progressColor: Colors.blue,
                          circularStrokeCap: CircularStrokeCap.round,
                          backgroundWidth: 8.0,
                          center: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              /// PERCENTAGE NUMBER
                              RichText(
                                softWrap: true,
                                text: TextSpan(
                                  style: GoogleFonts.oswald(),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '80',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '%',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              /// CLOSED VALUE
                              Text(
                                'APE CLOSED',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                currencyFormatter.format(58768),
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      CupertinoIcons.device_desktop,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                              ),
                                              child: Text(
                                                ConstantString.presentationDone,
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '10',
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                        ),
                                        SizedBox(height: 5),
                                        LinearPercentIndicator(
                                          percent: 0.7,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
