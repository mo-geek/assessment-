import 'package:assessment1/core/model/MoonCakeItem.dart';
import 'package:assessment1/core/model/cheapestDailyEssentialItem.dart';
import 'package:assessment1/core/model/mainCategoryItem.dart';
import 'package:assessment1/core/model/paneCakeItem.dart';
import 'package:stacked/stacked.dart';

class MainScreenViewBuilder extends BaseViewModel {
  List<MainCategoryItem> _mainCategoriesList = [
    MainCategoryItem('assets/images/myImage.png', 'Home Appliance'),
    MainCategoryItem('assets/images/myImage.png', 'For Baby'),
    MainCategoryItem('assets/images/myImage.png', 'Beverages'),
    MainCategoryItem('assets/images/myImage.png', 'Food'),
    MainCategoryItem('assets/images/myImage.png', 'Health & Beauty'),
    MainCategoryItem('assets/images/myImage.png', 'Home Appliance'),
    MainCategoryItem('assets/images/myImage.png', 'household'),
  ];

  List<MainCategoryItem> get mainCategoriesList => _mainCategoriesList;

  List<CheapestDailyEssentialItem> _cheapestDailyItemsList = [
    CheapestDailyEssentialItem('assets/images/product1.png', 'Maggi', 3.5),
    CheapestDailyEssentialItem('assets/images/product1.png', 'Milo UHT', 5.5),
    CheapestDailyEssentialItem('assets/images/product1.png', 'Sunlight', 2.5),
    CheapestDailyEssentialItem('assets/images/product1.png', 'Kotex 41%', 21.5),
    CheapestDailyEssentialItem(
        'assets/images/product1.png', 'Kimball Pasta', 3.5),
    CheapestDailyEssentialItem('assets/images/product1.png', 'Lifebuoy', 6.5),
    CheapestDailyEssentialItem('assets/images/product1.png', 'Top Powder', 3.5),
    CheapestDailyEssentialItem('assets/images/product1.png', 'Nestle', 5.5),
    CheapestDailyEssentialItem('assets/images/product1.png', "Munchy's", 3.5),
    CheapestDailyEssentialItem('assets/images/product1.png', 'Milo', 3.5),
    CheapestDailyEssentialItem('assets/images/product2.png', 'ZIZo', 3.5),
  ];

  List<CheapestDailyEssentialItem> get cheapestDailyItems =>
      _cheapestDailyItemsList;

  List<MoonCake> _moonCakesList = [
    MoonCake(
        'assets/images/moonCake1.png', 15.0, 6.0, 'Healthy Low Sugar MoonCake'),
    MoonCake('assets/images/moonCake2.png', 15.0, 6.0, 'Casahana MoonCake'),
    MoonCake('assets/images/moonCake3.png', 15.0, 6.0, 'JMM  MoonCake'),
    MoonCake('assets/images/moonCake1.png', 15.0, 6.0, 'Lulu MoonCake'),
    MoonCake('assets/images/moonCake2.png', 15.0, 6.0, 'More Sugar MoonCake'),
  ];

  List<MoonCake> get moonCakesList => _moonCakesList;

  List<PaneCake> _paneCakesList = [
    PaneCake('Sweet citrus Pane Cake', 'assets/images/paneCake1.png', '15'),
    PaneCake('Orange Pane Cake', 'assets/images/paneCake2.png', '13'),
    PaneCake('Sweet citrus Pane Cake', 'assets/images/paneCake1.png', '17'),
    PaneCake('Orange Pane Cake', 'assets/images/paneCake2.png', '11'),
  ];

  List<PaneCake> get paneCakeList => _paneCakesList;
}
