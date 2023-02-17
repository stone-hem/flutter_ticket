import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ticket/utils/app_layout.dart';
import 'package:flutter_ticket/utils/app_styles.dart';
import 'package:flutter_ticket/widets/ticket_container.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width*0.8,
      height: size.height * 0.3,
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      const TicketContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth()/6).floor(),
                                      (index) => const SizedBox(
                                        width: 3,
                                        height: 1,
                                        child: DecoratedBox(decoration: BoxDecoration(
                                          color: Colors.white
                                        )),
                                      )
                                      ),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),

                          ],
                        ),
                      ),
                      const TicketContainer(),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "LDN",
                        style: Styles.headStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height*0.04,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100,
                      child: Text("New york",style: Styles.headStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30MIN",style: Styles.headStyle4.copyWith(color: Colors.white),),
                       SizedBox(width: 100,
                      child: Text("London",textAlign: TextAlign.end,style: Styles.headStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(10)
                      )
                    )),
                  ),
                  Expanded(child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LayoutBuilder(
                                builder: (BuildContext context, BoxConstraints constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                        (constraints.constrainWidth()/15).floor(),
                                        (index) => const SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(decoration: BoxDecoration(
                                            color: Colors.white
                                          )),
                                        )
                                        ),
                                  );
                                },
                              ),
                  ),
                   ),
                   const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(10)
                      )
                    )),
                  ),
                ],
              ),
            ),
                        Container(
              decoration:  BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "1 Feb",
                        style: Styles.headStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                       Text(
                        "8.00AM",
                        style: Styles.headStyle3.copyWith(color: Colors.white),
                      ),
                    
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "LDN",
                        style: Styles.headStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height*0.04,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 100,
                      child: Text("New york",style: Styles.headStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30MIN",style: Styles.headStyle4.copyWith(color: Colors.white),),
                       SizedBox(width: 100,
                      child: Text("London",textAlign: TextAlign.end,style: Styles.headStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
