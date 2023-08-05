import 'package:dormshop/core/service/navigaton/navigaton_service.dart';
import 'package:dormshop/core/utils/extensions/ui_extensions.dart';
import 'package:dormshop/product/components/background_widget.dart';
import 'package:dormshop/product/enum/image_assets.dart';
import 'package:dormshop/product/model/item_ad_model.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';

part "item_ad_widget.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: false,
      bottomNavigationBar: _bottomBar(context),
      body: BackgroundWidget(child: _body()),
    );
  }

  Widget _body() {
    return Column(
      children: [
        _map(),
        _itemAdList(),
      ],
    );
  }

  Widget _map() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.smh, horizontal: 15.smw),
      child: Placeholder(
        fallbackHeight: 280.smh,
        fallbackWidth: 400.smw,
      ),
    );
  }

  Widget _itemAdList() {
    List<ItemAdModel> items = List.generate(100, (index) => ItemAdModel.test());

    return Expanded(
      child: Padding(
        padding: CustomThemeData.ui.pagePaddingW,
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: CustomThemeData.ui.pagePaddingHSize,
            crossAxisSpacing: CustomThemeData.ui.pagePaddingWSize,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return _ItemAdWidget(item: items[index]);
          },
        ),
      ),
    );
  }

  Widget _bottomBar(BuildContext context) {
    Widget _bottomBarItem(
        {required ImageAssets iconPath, required WidgetBuilder widgetBuilder}) {
      return InkWell(
        onTap: () {
          NavigationService.toPage(widgetBuilder(context));
        },
        child: Image.asset(iconPath.assetPath, height: 50.smh),
      );
    }

    return BottomAppBar(
        height: 50.smh,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomBarItem(
                iconPath: ImageAssets.home,
                widgetBuilder: (context) => const HomeView()),
            _bottomBarItem(
                iconPath: ImageAssets.search,
                widgetBuilder: (context) => const HomeView()),
            _bottomBarItem(
                iconPath: ImageAssets.add,
                widgetBuilder: (context) => const HomeView()),
            _bottomBarItem(
                iconPath: ImageAssets.notification,
                widgetBuilder: (context) => const HomeView()),
            _bottomBarItem(
                iconPath: ImageAssets.add,
                widgetBuilder: (context) => const HomeView()),
          ],
        ));
  }
}
