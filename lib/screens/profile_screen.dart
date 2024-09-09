import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mycool_profile1/components/profile_img.dart';
import 'package:mycool_profile1/components/profile_menu.dart';
import 'package:mycool_profile1/constant/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 24,
          color: iconSecondaryColor,
        ),
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 24,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const ProfileImage(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'THUNRADA ANUTARAKUN',
              style: textTitle,
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              'yapaka19@gmail.com',
              style: textSubTitle,
            ),

            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 35,
              child: Container(
                // color: iconPrimaryColor,
                decoration: BoxDecoration(
                  color: iconPrimaryColor,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(child: Text('Edit Profile', style: textBtn)),
              ),
            ),

            //Menu profile
            const SizedBox(
              height: 30,
            ),
            const ProfileMenu(title: 'Setting', icons: Icons.settings,),
            const ProfileMenu(title: 'Billing Detail', icons: Icons.wallet,),
            const ProfileMenu(title: 'User Management', icons: Icons.person,),
            const SizedBox(height: 40,),
            const ProfileMenu(title: 'Information', icons: Icons.info,),
            const ProfileMenu(title: 'Logout', icons: Icons.logout,),

            
          ],
        ),
      ),
    );
  }
}

