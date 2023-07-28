import 'package:dormshop/core/utils/extensions/ui_extensions.dart';
import 'package:dormshop/product/components/background_widget.dart';
import 'package:dormshop/product/model/item_ad_model.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';

part "item_ad_widget.dart";

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(child: _body()),
    );
  }

  Widget _body() {
    return Column(
      children: [_map(), _itemAdList()],
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
}
