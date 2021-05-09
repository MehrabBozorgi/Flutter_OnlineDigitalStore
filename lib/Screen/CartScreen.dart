import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Item/CartScreen/DeleteProductViewItem.dart';
import 'package:flutter_online_movie_shop/Item/CartScreen/NoButton.dart';
import 'package:flutter_online_movie_shop/Item/CartScreen/ProductPriceItem.dart';
import 'package:flutter_online_movie_shop/Item/CartScreen/TotalCartPriceItem.dart';
import 'package:flutter_online_movie_shop/Item/CartScreen/TotalProductPriceItem.dart';
import 'package:flutter_online_movie_shop/Widgets/AppUrlWidget.dart';
import '../Const.dart';
import 'Cart.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int cartPrice = 0;

  Map<int, String> movie_id = Map();
  List<Map<String, dynamic>> movie_listData = [];

  _CartScreenState() {
    Cart.get_cart_product().then(
      (response) {
        List<String> movies_id = response.split("_");

        for (int i = 0; i < (movies_id.length - 1); i++) {
          String id = movies_id[i];
          movie_id[i] = id;
          Cart.get_product_data(id).then(
            (response) {
              setState(
                () {
                  cartPrice += (response['price'] * response['number']);
                  movie_listData.add(response);
                },
              );
            },
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'سبد خرید',
          style: kSelectedTextTabView,
        ),
        actions: [
          //DELETE_ICON
          movie_listData.length > 0
              ? IconButton(
                  icon: Icon(
                    Icons.delete,
                  ),
                  onPressed: () {
                    AlertDialog dialog = AlertDialog(
                      backgroundColor: Colors.grey[900],
                      content: Text(
                        'خالی کردن سبد خرید؟',
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(color: Colors.white, fontFamily: 'title'),
                      ),
                      elevation: 15,
                      actions: [
                        //No Button
                        NoButton(),
                        //
                        //Yes Button
                        RaisedButton(
                          onPressed: () {
                            Cart.empty_cart().then((response) {
                              Navigator.pop(context);
                              if (response) {
                                setState(() {
                                  movie_listData = [];
                                });
                              }
                            });
                          },
                          child: Text(
                            'بله',
                            style: TextStyle(
                                color: Colors.red, fontFamily: 'title'),
                          ),
                        ),
                      ],
                    );

                    showDialog(
                        context: context,
                        builder: (BuildContext context) => dialog);
                  },
                )
              : Text(''),
        ],
      ),

      // Body
      body: Container(
        child: movie_listData.length > 0
            ? ListView.builder(
                itemBuilder: (context, index) => cartRowItem(index),
                itemCount: movie_listData.length,
              )
            : Container(
                child: Center(
                  child: Text('سبد خرید خالی می باشد', style: kHomeTitle),
                ),
              ),
      ),
    );
  }

  //CartRowItem
  cartRowItem(int index) {
    String price = movie_listData[index]['price'].toString();

    int total_price =
        movie_listData[index]['price'] * movie_listData[index]['number'];

    String price2 = total_price.toString();

    return SingleChildScrollView(
      child: Column(
        children: [
          /////////  (جمع کل) CartPrice
          TotalCartPriceItem(cartPrice: cartPrice),

          //بخش اصلی
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            width: double.infinity,
            decoration: cartMainBorderDecoration,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: cartMainBorderDecoration,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          child: Image(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              movie_listData[index]['image_url'],
                            ),
                            height: 100,
                            width: 150,
                          ),
                        ),
                      ),
                      Text(
                        movie_listData[index]['name'],
                        style: kHomeTitleName,
                      ),
                    ],
                  ),
                ),

                //قیمت محصول
                ProductPriceItem(price: price),

                //جمع قیمت محصول ها
                TotalProductPriceItem(price2: price2),

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Row(
                          children: [
                            //دکمه ی اضافه کردن +
                            IconButton(
                              autofocus: true,
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Cart.change_number_product(movie_id[index])
                                    .then(
                                  (response) {
                                    if (response) {
                                      setState(
                                        () {
                                          int n =
                                              movie_listData[index]['number'];
                                          n = n + 1;
                                          movie_listData[index]['number'] = n;
                                          cartPrice +=
                                              movie_listData[index]['price'];
                                        },
                                      );
                                    }
                                  },
                                );
                              },
                            ),
                            Text(
                              movie_listData[index]['number'].toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              //دکمه ی کم کردن -
                              icon: Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Cart.reduce_product_count(movie_id[index]).then(
                                  (response) {
                                    if (response) {
                                      setState(
                                        () {
                                          int n =
                                              movie_listData[index]['number'];

                                          if (n > 1) {
                                            n = n - 1;
                                            movie_listData[index]['number'] = n;
                                            //
                                            cartPrice -=
                                                movie_listData[index]['price'];
                                            //
                                          } else {
                                            cartPrice -=
                                                movie_listData[index]['price'];
                                            //
                                            movie_listData.removeAt(index);
                                            movie_id.remove(index);
                                            _updateCartProductId();
                                          }
                                        },
                                      );
                                    }
                                  },
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                    //دکمه ی حذف هر حصول
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Cart.remove_cart_product(movie_id[index])
                              .then((response) {
                            if (response) {
                              setState(() {
                                cartPrice -= (movie_listData[index]['price'] *
                                    movie_listData[index]['number']);
                                //
                                movie_listData.removeAt(index);
                                movie_id.remove(index);
                                _updateCartProductId();
                              });
                            }
                          });
                        },
                        child: Container(
                          margin:
                              EdgeInsets.only(left: 10, right: 50, bottom: 10),
                          padding: EdgeInsets.all(5),
                          height: 40,
                          width: 100,
                          decoration: DeleteButton_In_Cart_Decoration,
                          child: DeleteProductViewItem(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _updateCartProductId() {
    Map<int, String> newCartData = Map();
    int i = 0;
    movie_id.forEach(
      (key, value) {
        newCartData[i] = value;
        i++;
      },
    );
    movie_id = newCartData;
  }
}
