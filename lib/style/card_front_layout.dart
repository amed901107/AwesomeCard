import 'package:awesome_card/res/colors.dart';
import 'package:flutter/material.dart';

class CardFrontLayout {
  String bankName;
  String? cardNumber;
  String? cardExpiry;
  String? cardHolderName;
  Widget? cardTypeIcon;
  double? cardWidth;
  double? cardHeight;
  Color? textColor;

  String? textExpDate;
  String? textName;
  String? textExpiry;
  BuildContext context;

  CardFrontLayout(
      {required this.context,
      this.bankName = '',
      this.cardNumber = '',
      this.cardExpiry = '',
      this.cardHolderName = '',
      this.textExpDate = 'Exp. Date',
      this.textExpiry = 'MM/YY',
      this.textName = 'Card Holder',
      this.cardTypeIcon,
      this.cardWidth = 0,
      this.cardHeight = 0,
      this.textColor});

  Widget layout1(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              color: ColorsAwesome.backgroundLogoCard,
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Image.asset(
                  'images/logo_metro.png',
                  fit: BoxFit.fill,
                  width: 40.0,
                  height: 40.0,
                  package: 'awesome_card',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Center(
                  child: Text(
                    bankName,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            cardNumber == null || cardNumber!.isEmpty
                                ? 'XXXX XXXX XXXX XXXX'
                                : cardNumber!,
                            style: TextStyle(
                                package: 'awesome_card',
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'MavenPro',
                                fontSize: 22),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            cardHolderName == null || cardHolderName!.isEmpty
                                ? textName!
                                : cardHolderName!,
                            style: TextStyle(
                                package: 'awesome_card',
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'MavenPro',
                                fontSize: 17),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                textExpDate!,
                                style: TextStyle(
                                    package: 'awesome_card',
                                    color: textColor,
                                    fontFamily: 'MavenPro',
                                    fontSize: 15),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                cardExpiry == null || cardExpiry!.isEmpty
                                    ? textExpiry!
                                    : cardExpiry!,
                                style: TextStyle(
                                    package: 'awesome_card',
                                    color: textColor,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'MavenPro',
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5), child: cardTypeIcon!),
                  ]),
            ),
          ),
        ),
      ],
    );
  }
}
