import 'package:dormshop/product/model/item_ad_model.dart';
import 'package:dormshop/product/theme/custom_theme_data.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
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
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Placeholder(
        fallbackHeight: 280,
        fallbackWidth: 400,
      ),
    );
  }

  Widget _itemAdList() {
    List<ItemAdModel> items = List.generate(100, (index) => ItemAdModel.test());

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _itemAdItem(items[index]);
      },
    );
  }

  Widget _itemAdItem(ItemAdModel item) {
    return Container(
      decoration: BoxDecoration(
        color: CustomThemeData.colors.white,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              const Stack(),
              Transform.rotate(angle: 0.8, child: Text(item.price.toString())),
            ],
          ),
          Text(item.title),
          Text(item.description),
        ],
      ),
    );
  }
}
