import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ticket/utils/app_layout.dart';
import 'package:flutter_ticket/utils/app_styles.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size=Applayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: size.height*0.5,
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                    Text("NYC",style: Styles.headStyle3.copyWith(color: Colors.white),),
                    const Spacer(),
                    Text("LDN",style: Styles.headStyle3.copyWith(color: Colors.white),),
                  ],)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}