class AllHomeRowsClass {
  final String item;
  final double cost;
  final String image;
  final String category;
  AllHomeRowsClass({
    required this.category,
    required this.item,
    required this.cost,
    required this.image,
  });
}

class CartModel {
  static String path = "assets/images/";
  static List<AllHomeRowsClass> allHomeData = [
    AllHomeRowsClass(
        category: "F", item: "Avocado", cost: 200, image: path + "Avocado.png"),
    AllHomeRowsClass(
        category: "F",
        item: "Pineapple",
        cost: 90,
        image: path + "Pineapple.png"),
    AllHomeRowsClass(
        category: "F",
        item: "Strawberry",
        cost: 420,
        image: path + "Strawberry.png"),
    AllHomeRowsClass(
        category: "F",
        item: "Watermelon",
        cost: 30,
        image: path + "Watermelon.png"),
    AllHomeRowsClass(
        category: "V", item: "Carrot", cost: 50, image: path + "Carrot.png"),
    AllHomeRowsClass(
        category: "V",
        item: "Cauliflower",
        cost: 31,
        image: path + "Cauliflower.png"),
    AllHomeRowsClass(
        category: "V", item: "Carrot", cost: 50, image: path + "Carrot.png"),
    AllHomeRowsClass(
        category: "D", item: "Milk", cost: 32, image: path + "Milk.png"),
    AllHomeRowsClass(
        category: "D", item: "Yogurt", cost: 70, image: path + "Yogurt.png")
  ];
}
