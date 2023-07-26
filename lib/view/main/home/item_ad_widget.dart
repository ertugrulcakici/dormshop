part of "home_view.dart";

class _ItemAdWidget extends StatelessWidget {
  final ItemAdModel item;
  const _ItemAdWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: CustomThemeData.ui.borderRadius,
        border: Border.all(
          color: CustomThemeData.colors.black.withOpacity(0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomThemeData.colors.black.withOpacity(0.1),
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
        color: CustomThemeData.colors.white,
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: CustomThemeData.ui.borderRadius,
                child: Image.network(
                  item.thumbnailUrl,
                  fit: BoxFit.cover,
                  height: 120.smh,
                  width: 120.smh,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    );
                  },
                ),
              ),
              RotatedBox(
                  quarterTurns: 1,
                  child: Text("${item.price.toStringAsFixed(2)}€",
                      style: CustomThemeData.fonts.adPriceText
                          .copyWith(color: CustomThemeData.colors.black))),
            ],
          ),
          Text(item.title, style: CustomThemeData.fonts.adTitle),
          Text(item.description,
              style: CustomThemeData.fonts.adDescription
                  .copyWith(color: CustomThemeData.colors.black)),
        ],
      ),
    );
  }
}
