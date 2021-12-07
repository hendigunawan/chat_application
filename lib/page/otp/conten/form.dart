import 'package:flutter/material.dart';
import 'package:chat_application/page/account/account.dart';

class FormOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NewWidget(first: true, last: false),
              NewWidget(first: false, last: false),
              NewWidget(first: false, last: false),
              NewWidget(first: false, last: true),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Account.routeNamed);
              },
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'Verify',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required this.first,
    required this.last,
  }) : super(key: key);

  final bool first;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
            if (value.length == 1 && last == true) {
              FocusScope.of(context).unfocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            // enabledBorder: OutlineInputBorder(
            //     borderSide: BorderSide(width: 2, color: Colors.black12),
            //     borderRadius: BorderRadius.circular(12)),
            // focusedBorder: OutlineInputBorder(
            //     borderSide: BorderSide(width: 2, color: Colors.purple),
            //     borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
