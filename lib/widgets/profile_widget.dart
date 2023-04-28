import 'package:flutter/material.dart';
import 'package:universe/consts/Project_Colors.dart';
import 'package:universe/consts/Project_padding_and_radius.dart';
import 'package:universe/consts/Project_widht_and_height.dart';
import 'package:universe/consts/project_titles_and_urls.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String url = "assets/images/profil.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.blackPearl,
        title: Text(ProjectTitles.ProfilePageTitle),
      ),
      backgroundColor: ProjectColors.blackPearl,
      body: Padding(
        padding: EdgeInsets.all(ProjectPadding.normalPadding),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(ProjectPadding.big2Padding),
            child: Column(
              children: [
                Image.asset(
                  url,
                ),
                SizedBox(
                  height: ProjectHeight.underProfileHeight,
                ),
                _ProfileTextField(hintText: ProjectTitles.ProfileName),
                SizedBox(height: ProjectHeight.underNameHeight),
                _ProfileTextField(hintText: ProjectTitles.ProfileSurname),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileTextField extends StatelessWidget {
  final String hintText;

  const _ProfileTextField({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(ProjectRadius.normalRadius))),
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
