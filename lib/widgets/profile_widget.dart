import 'package:flutter/material.dart';
import 'package:universe/consts/Project_Colors.dart';
import 'package:universe/consts/Project_widht_and_height.dart';
import 'package:universe/consts/project_titles_and_urls.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String url="assets/images/profil.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.blackPearl,
        title: Text(ProjectTitles.ProfilePageTitle),
      ),

      backgroundColor: ProjectColors.blackPearl,
      body: Padding(
        padding: EdgeInsets.all(60.5),
        child: Column(
          children: [
            Image.asset(
              url,
            ),
            SizedBox(
              height: ProjectHeight.underProfileHeight,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: ProjectTitles.ProfileName,
              ),
            ),
            SizedBox(height: ProjectHeight.underNameHeight),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: ProjectTitles.ProfileSurname,
              ),
            ),
          ],
        ),
      ),

    );
  }
}
