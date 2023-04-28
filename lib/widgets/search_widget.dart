import 'package:flutter/material.dart';
import 'package:universe/consts/Project_Colors.dart';
import 'package:universe/consts/Project_padding_and_radius.dart';
import 'package:universe/consts/project_titles_and_urls.dart';
import '../main_Page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MainPage()));
        }),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(ProjectTitles.SearchPageTitle),
        backgroundColor: ProjectColors.blackPearl,
      ),
      body: Search(),
      backgroundColor: ProjectColors.blackPearl,
    );
  }
}

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ProjectPadding.middlePadding),
      child: Form(
        key: formkey,
        child: Column(
          children: [
            _iconPadding(),
          ],
        ),
      ),
    );
  }

  Padding _iconPadding() {
    return Padding(
      padding: const EdgeInsets.all(ProjectPadding.middlePadding),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(ProjectRadius.normalRadius))),
          prefixIcon: Icon(Icons.search),
          hintText: ProjectTitles.SearchText,
        ),
      ),
    );
  }
}
