import 'package:flutter/material.dart';
import 'package:universe/consts/Project_padding_and_radius.dart';
import 'package:universe/consts/Project_widht_and_height.dart';
import 'package:universe/datas/general_datas.dart';
import '../consts/Project_Colors.dart';

class MainPageOptionsContainer extends StatefulWidget {
  const MainPageOptionsContainer({Key? key}) : super(key: key);

  @override
  State<MainPageOptionsContainer> createState() =>
      _MainPageOptionsContainerState();
}

class _MainPageOptionsContainerState extends State<MainPageOptionsContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ProjectHeight.toggleHeight,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: ProjectDatas.optionsDatasController.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(ProjectPadding.middlePadding),
          child: InkWell(
            onTap: () {
              _toggleTheMenuBuilderColor(index);
              /*
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SecondPage()));

               */
            },
            child: Container(
              width: ProjectWidht.toggleWidht,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ProjectRadius.normalRadius),
                  color: ProjectDatas.optionsDatasController[index] == true
                      ? ProjectColors.blueAccent
                      : ProjectColors.indigo,
                  boxShadow: [BoxShadow(blurRadius: 2)]),
              child: Center(
                child: Text(
                  ProjectDatas.options[index],
                  style: Theme.of(context).textTheme.bodyText1
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _toggleTheMenuBuilderColor(int index) {
    return setState(() {
      if (ProjectDatas.optionsDatasController[index] == true) {
        ProjectDatas.optionsDatasController[index] = true;
        for (int i = 0; i < ProjectDatas.optionsDatasController.length; i++) {
          if (i != index) {
            ProjectDatas.optionsDatasController[i] = false;
          }
        }
      } else {
        ProjectDatas.optionsDatasController[index] = true;
        for (int i = 0; i < ProjectDatas.optionsDatasController.length; i++) {
          if (i != index) {
            ProjectDatas.optionsDatasController[i] = false;
          }
        }
      }
    });
  }
}
