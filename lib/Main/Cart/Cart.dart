import 'package:shared_preferences/shared_preferences.dart';

class Cart {

  static Future<bool> add_product_cart(
      String movie_id, String name, int price, String image_url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String movies_id = prefs.getString("movies_id");

    if (movies_id != null) {
      if (movies_id.indexOf(movie_id) >= 0) {
        await change_number_product(movie_id);
      } else {
        String data = movies_id + movie_id + "_";
        prefs.setString('movies_id', data);
        await add_product_data(movie_id, name, price, image_url);
      }
    } else {
      String data = movie_id + "_";
      prefs.setString('movies_id', data);
      await add_product_data(movie_id, name, price, image_url);
    }
    return true;
  }



  static add_product_data(
      String movie_id, String name, int price, String image_url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name_' + movie_id, name);
    prefs.setInt('price_' + movie_id, price);
    prefs.setString('image_url_' + movie_id, image_url);

    prefs.setInt('number_' + movie_id, 1);
  }


  static Future<bool> change_number_product(String movie_id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    int n = prefs.getInt('number_' + movie_id);
    n = n + 1;
    prefs.setInt('number_' + movie_id, n);

    return true;
  }


  static Future<bool> remove_cart_product(String movie_id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String movies_id = prefs.getString("movies_id");

    movies_id = movies_id.replaceAll(movie_id + "_", "");

    if (movies_id.isEmpty) {
      prefs.remove('movies_id');
    } else {
      prefs.setString('movies_id', movies_id);
    }

    prefs.remove('name_' + movie_id);
    prefs.remove('price_' + movie_id);
    prefs.remove('image_url_' + movie_id);
    prefs.remove('number_' + movie_id);

    return true;
  }


  static Future<bool> empty_cart() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String movies_id = prefs.getString("movies_id");

    List<String> p_id = movies_id.split('_');

    for (int i = 0; i < (p_id.length - 1); i++) {
      prefs.remove('name_' + p_id[i]);
      prefs.remove('price_' + p_id[i]);
      prefs.remove('image_url_' + p_id[i]);
      prefs.remove('number_' + p_id[i]);
    }

    prefs.remove("movies_id");

    return true;
  }

  static Future<String> get_cart_product() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String movies_id = prefs.getString('movies_id');

    return movies_id;
  }

  static Future<Map<String, dynamic>> get_product_data(
      String movie_id) async {
    Map<String, dynamic> data = Map();

    SharedPreferences prefs = await SharedPreferences.getInstance();

    String name = prefs.getString('name_' + movie_id);
    int price = prefs.getInt('price_' + movie_id);
    String image_url = prefs.getString('image_url_' + movie_id);
    int number = prefs.getInt('number_' + movie_id);

    data['name'] = name;
    data['price'] = price;
    data['image_url'] = image_url;
    data['number'] = number;

    return data;
  }

  static Future<bool> reduce_product_count(String movie_id) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int n = prefs.getInt('number_' + movie_id);
    if (n > 1) {
      n = n - 1;
      prefs.setInt('number_' + movie_id, n);
    } else {
      remove_cart_product(movie_id);
    }

    return true;
  }
}