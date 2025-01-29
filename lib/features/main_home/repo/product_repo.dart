import '../../../core/models/products.dart';
import '../../../core/networks/network_maneger.dart';

class ProductRepo {
  Future<List<dynamic>> getProducts() async {
    List<dynamic> response = await NetworkManager().getProducts();
    var respopnse =
        response.map((product) => Products.fromJson(product)).toList()
          ..forEach((element) {
            element.images =
                element.images?.map((image) => cleanImageUrl(image)).toList();
          });
    // cleanImageUrl(respopnse[].images[0]);
    return respopnse;
  }

  String cleanImageUrl(String url) {
    // Check if the URL starts with "[/" and remove the bracket if present
    if (url.startsWith('["')) {
      url = url.substring(0, url.length - 1);
    }
    return url;
  }
}
