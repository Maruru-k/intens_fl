import 'package:flutter/material.dart';

class QrCodeWidget extends MaterialPageRoute<void> {
  QrCodeWidget({required WidgetBuilder builder}) : super(builder: builder);

  @override
  WidgetBuilder get builder {
    return (BuildContext context){
      return Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/qr.png"),
      );
    };
  }

}


