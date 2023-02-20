import 'package:flutter/material.dart';
import 'package:flutter_ticket/screens/hotel_images.dart';
import 'package:flutter_ticket/screens/ticket_view.dart';
import 'package:flutter_ticket/utils/app_styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good morning',
                          style: Styles.headStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Book tickets',
                          style: Styles.headStyle,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("images/tyre.jpg"))),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.01),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Row(
                    children: [
                      const Icon(Icons.search_rounded),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Text(
                        "search",
                        style: Styles.headStyle4,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming flights",
                      style: Styles.headStyle2,
                    ),
                    InkWell(
                      onTap: () {
                        print("view all");
                      },
                      child: Text(
                        "view all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    )
                  ],
                ),
                 SizedBox(
                  height: height * 0.05,
                ),
                
              ],
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      TicketView(),
                      SizedBox(width: 10,),
                      TicketView()
                    ],
                  ),
                ),
                Container(
                  padding:const EdgeInsetsDirectional.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hotels",
                        style: Styles.headStyle2,
                      ),
                      InkWell(
                        onTap: () {
                          print("view all");
                        },
                        child: Text(
                          "view all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      )
                    ],
                  ),
                ),
                 SizedBox(
                  height: height * 0.03,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      HotelImages(),
                      HotelImages(),
                      HotelImages(),
                    ],
                  ),
                  ),
        
        ],
      ),
    );
  }
}
