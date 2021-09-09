import 'package:assessment1/core/viewmodel/mainScreenViewModel.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainCategoriesListWidget extends StatelessWidget {
  final MainScreenViewBuilder model;
  MainCategoriesListWidget(this.model);
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Scrollbar(
        controller: _scrollController,
        child: SizedBox(
          height: MediaQuery.of(context).size.width * 0.34,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.only(right: 15.0),
              child: Column(
                children: [
                  // product image
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.17,
                    height: MediaQuery.of(context).size.width * 0.19,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(23),
                      child: FittedBox(
                        fit: BoxFit.cover,
                        child:
                            Image.asset(model.mainCategoriesList[index].image),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  // product name
                  Container(
                    width: MediaQuery.of(context).size.width * 0.17,
                    child: AutoSizeText(
                      model.mainCategoriesList[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            itemCount: model.mainCategoriesList.length,
          ),
        ),
        isAlwaysShown: true,
        showTrackOnHover: true,
        hoverThickness: 5.0,
        radius: Radius.circular(7.0),
      ),
    );
  }
}
