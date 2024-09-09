import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mycool_profile/components/profile_img.dart';
import 'package:mycool_profile/components/profile_menu.dart';
import 'package:mycool_profile/constant/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 26,
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
            size: 26,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 20,
          )
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

            //Image Profile
            const ProfileImage(),

            //Detail Profile
            const SizedBox(
              height: 20,
            ),
            Text(
              'Nattawut khanarnan',
              style: textTitle,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              's6507012660044@email.kmutnb.ac.th',
              style: textSubTitle,
            ),

            //Button Edit
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 35,
              child: Container(
                // color: Colors.blue,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Center(
                    child: Text(
                  'Edit Profile',
                  style: textBtn,
                )),
              ),
            ),

            // Btn Menu Profile
            const SizedBox(
              height: 30,
            ),
            const ProfileMenu(title: 'Setting', icons: Icons.settings,),
            const SizedBox(height: 13,),
            const ProfileMenu(title: 'Billing Detail', icons: Icons.wallet,),
            const SizedBox(height: 13,),
            const ProfileMenu(title: 'User Management', icons: Icons.person,),
            const SizedBox(height: 30,),
            const ProfileMenu(title: 'Information', icons: Icons.info,),
            const SizedBox(height: 13,),
            const ProfileMenu(title: 'Log out', icons: Icons.logout,),
          ],
        ),
      ),
    );
  }
}

