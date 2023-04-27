import 'package:flutter/material.dart';
import 'package:universe/consts/Project_Colors.dart';
import 'package:universe/consts/Project_widht_and_height.dart';
import 'package:universe/consts/project_titles_and_urls.dart';
import 'package:universe/widgets/main_page_options_container_widget.dart';
import 'package:universe/widgets/profile_widget.dart';
import 'package:universe/widgets/search_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

planets({required String planetImage, required String planetName}) {}

class _MainPageState extends State<MainPage> {
  final List<String> planetImage = [
    "assets/images/jüpiter.png",
    "assets/images/pluto.png",
    "assets/images/dünya.png",
    "assets/images/satürn.png",
  ];
  final List<String> planetName = [
    "Jüpiter",
    "Pluto",
    "Dünya",
    "Satürn",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.blackPearl,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titlePadding(context),
              _writingPadding(context),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: MainPageOptionsContainer(),
              ),

              //Boxes
              Container(
                width: ProjectWidht.infinityWidht,
                height: ProjectHeight.containerHeight,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => SafeArea(
                    child: PlanetWidget(
                      planetImage: planetImage[index],
                      planetName: planetName[index],
                    ),
                  ),
                ),
              ),

              // Elevated buttons
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MainPage()));
                        },
                        icon: Icon(Icons.border_all_outlined),
                        label: Text(ProjectTitles.MainPageTitle),
                        style: ElevatedButton.styleFrom(
                            primary: ProjectColors.blackPearl)),
                    SizedBox(height: 10),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SearchPage()));
                        },
                        icon: Icon(Icons.search),
                        label: Text(ProjectTitles.SecondButtonTitle),
                        style: ElevatedButton.styleFrom(
                            primary: ProjectColors.blackPearl)),
                    SizedBox(height: 10),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                        },
                        icon: Icon(Icons.person),
                        label: Text(ProjectTitles.ThirdButtonTitle),
                        style: ElevatedButton.styleFrom(
                          primary: ProjectColors.blackPearl,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _writingPadding(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: ProjectWidht.normalWidht, top: ProjectWidht.smallWidht),
      child: Text(
        ProjectTitles.MainPageSubtitle,
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: ProjectColors.white30,
            ),
      ),
    );
  }

  Padding _titlePadding(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: ProjectWidht.normalWidht, top: ProjectHeight.firstHeight),
      child: Text(
        ProjectTitles.MainPageTitle,
        style: Theme.of(context).textTheme.headline4?.copyWith(
              fontWeight: FontWeight.w500,
              color: ProjectColors.white,
            ),
      ),
    );
  }
}

//kutucukların designı
class PlanetWidget extends StatelessWidget {
  final String planetImage;
  final String planetName;

  const PlanetWidget({
    Key? key,
    required this.planetImage,
    required this.planetName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(3.0),
      child: Container(
        width: ProjectWidht.infinityWidht,
        decoration: BoxDecoration(
          color: ProjectColors.deepPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: ProjectHeight.boxContainerHeight,
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage(planetImage),
                  ),
                ),
                SizedBox(
                  height: ProjectHeight.smallHeight,
                ),
                Text(planetName,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
