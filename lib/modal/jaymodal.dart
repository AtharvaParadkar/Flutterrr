class Jaymodal {
  final String ItemImageUrl, ItemTitle, ItmeClass;
  final double ItemPrice;
  final bool BestSeller;

  Jaymodal({
    this.BestSeller = false,
    required this.ItemImageUrl,
    required this.ItemTitle,
    required this.ItmeClass,
    required this.ItemPrice,
  });
}
