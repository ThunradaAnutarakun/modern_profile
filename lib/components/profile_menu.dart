import 'package:flutter/material.dart';
import 'package:mycool_profile1/constant/constant.dart';

class ProfileMenu extends StatelessWidget {
  final String title;
  final IconData icons;
  
  const ProfileMenu({
    Key? key,
    required this.title,
    required this.icons,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              icons,
              size: 15,
              color: iconPrimaryColor,
            ),
          ),
          const SizedBox(width: 10,
          ),
          Text(
            title,
            style: textMenu,
          ),
          const Spacer(),
          CircleAvatar(
            radius: 18,
            backgroundColor: Colors.grey,
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: iconSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}