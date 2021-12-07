import 'package:flutter/material.dart';
import 'package:chat_application/component/phonenumber/intl_phone_field.dart';
import '../../otp/otp.dart';

class FormR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IntlPhoneField(
          dropDownIcon: Icon(
            Icons.arrow_drop_down,
            size: 0,
          ),
          initialCountryCode: 'ID',
          decoration: InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Otp.routeNamed);
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Send',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }
}
