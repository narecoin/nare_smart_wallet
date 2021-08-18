import 'package:cake_wallet/src/screens/dashboard/widgets/yat_alert/yat_bar.dart';
import 'package:cake_wallet/src/screens/dashboard/widgets/yat_alert/yat_page_indicator.dart';
import 'package:cake_wallet/src/widgets/primary_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cake_wallet/palette.dart';

class FirstIntroduction extends StatelessWidget {
  FirstIntroduction({this.onClose, this.onNext});

  static const aspectRatioImage = 1.133;
  final VoidCallback onClose;
  final VoidCallback onNext;
  final image = Image.asset('assets/images/emoji_first_intro.png');

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight,
      width: screenWidth,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              height: 90,
              padding: EdgeInsets.only(top: 40, left: 24, right: 24),
              child: YatBar(onClose: onClose)
          ),
          Container(
            height: screenHeight - 90,
            padding: EdgeInsets.only(bottom: 24),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AspectRatio(
                      aspectRatio: aspectRatioImage,
                      child: FittedBox(child: image, fit: BoxFit.fill)
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                          children: [
                            Text(
                                'Send and receive crypto more easily with Yat',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lato',
                                  color: Colors.black,
                                  decoration: TextDecoration.none,
                                )
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text(
                                    'Cake Wallet users can now send and receive all their favorite currencies with a one-of-a-kind emoji-based username.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Lato',
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                    )
                                )
                            )
                          ]
                      )
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 24, right: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          PrimaryButton(
                              text: 'Next',
                              textColor: Colors.white,
                              color: Palette.protectiveBlue,
                              onPressed: onNext
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: YatPageIndicator(filled: 0)
                          )
                        ]
                      )
                  )
                ]
            )
          )
        ],
      )
    );
  }
}