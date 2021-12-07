import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Photo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: SvgPicture.asset("assets/icons/user.svg"),
          ),
          Positioned(
            right: -2,
            bottom: 2,
            child: SizedBox(
              height: 30,
              width: 30,
              child: IconButton(
                icon: Icon(Icons.add_a_photo_rounded),
                iconSize: 29,
                highlightColor: Colors.white,
                splashColor: Colors.white,
                color: Colors.grey[100],
                onPressed: () {},
                // style: TextButton.styleFrom(
                //   shadowColor: Colors.transparent,
                //   onSurface: Colors.transparent,
                //   // shape: RoundedRectangleBorder(
                //   //   borderRadius: BorderRadius.circular(50),
                //   //   side: BorderSide(color: Colors.transparent),
                //   // ),
                //   primary: Colors.black54,
                //   backgroundColor: Colors.transparent,
                // ),
                // onPressed: () {},
                // child: Icon(
                //   Icons.add_a_photo_rounded,
                //   size: 29,
                // ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
