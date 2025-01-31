import '../../../core/models/products.dart';
import '../../../core/networks/network_maneger.dart';

class CategoryRepo {
  Future<List<dynamic>> getCategory() async {
    List<dynamic> response = await NetworkManager().getCategory();
    return response.map((category) => Category.fromJson(category)).toList();
  }
}
