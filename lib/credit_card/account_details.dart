import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import '../reusable_widgets/reusable_widget.dart';

class Account_Details extends StatefulWidget {
  const Account_Details({Key? key}) : super(key: key);

  @override
  State<Account_Details> createState() => _Account_DetailsState();
}

class _Account_DetailsState extends State<Account_Details> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(
        title: 'Account/Payment',
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                CreditCardWidget(
                  glassmorphismConfig:
                      useGlassMorphism ? Glassmorphism.defaultConfig() : null,
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  showBackView: isCvvFocused,
                  obscureCardNumber: true,
                  obscureCardCvv: true,
                  isHolderNameVisible: true,
                  cardBgColor: Color.fromARGB(248, 226, 149, 48),
                  isSwipeGestureEnabled: true,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        CreditCardForm(
                            formKey: formKey,
                            obscureCvv: true,
                            obscureNumber: true,
                            cardNumber: cardNumber,
                            cvvCode: cvvCode,
                            isHolderNameVisible: true,
                            isCardNumberVisible: true,
                            isExpiryDateVisible: true,
                            cardHolderName: cardHolderName,
                            expiryDate: expiryDate,
                            themeColor: Colors.blue,
                            cardNumberDecoration: InputDecoration(
                              labelText: 'Card Number',
                              hintText: '0000 0000 0000 0000',
                              hintStyle: const TextStyle(color: Colors.grey),
                              labelStyle: const TextStyle(color: Colors.black),
                            ),
                            expiryDateDecoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.grey),
                              labelStyle: const TextStyle(color: Colors.black),
                              labelText: 'Expired Date',
                              hintText: 'MM/YY',
                            ),
                            cvvCodeDecoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.grey),
                              labelStyle: const TextStyle(color: Colors.black),
                              labelText: 'CVV',
                              hintText: '***',
                            ),
                            cardHolderDecoration: InputDecoration(
                              hintStyle: const TextStyle(color: Colors.grey),
                              labelStyle: const TextStyle(color: Colors.black),
                              labelText: 'Card Holder',
                            ),
                            onCreditCardModelChange: onCreditCardModelChange,
                            textColor: Colors.black),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // ElevatedButton(
                        //   style: ElevatedButton.styleFrom(
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(100),
                        //     ),
                        //     primary: Colors.orange.shade900,
                        //   ),
                        //   child: Container(
                        //     margin: const EdgeInsets.all(12),
                        //     child: const Text(
                        //       'Add now',
                        //       style: TextStyle(
                        //         color: Colors.white,
                        //         fontFamily: 'halter',
                        //         fontSize: 18,
                        //         package: 'flutter_credit_card',
                        //       ),
                        //     ),
                        //   ),
                        //   onPressed: () {
                        // if (formKey.currentState!.validate()) {
                        //   print('valid!');
                        // } else {
                        //   print('invalid!');
                        // }
                        //   },
                        // ),
                        UIButton(context, "Add now", () {
                          if (formKey.currentState!.validate()) {
                            print('valid!');
                          } else {
                            print('invalid!');
                          }
                        }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
