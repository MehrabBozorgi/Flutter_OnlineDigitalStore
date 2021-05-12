import 'package:flutter/material.dart';
import 'package:flutter_online_movie_shop/Movie/screen/MovieScreen.dart';
import 'package:flutter_online_movie_shop/Widget/AppDataWidget.dart';
import 'package:flutter_online_movie_shop/Widget/ShopButton.dart';
import 'package:http/http.dart' as http;
import '../../../Const.dart';

class AddCommentScreen extends StatefulWidget {
  int idM;
  String name = '';

  AddCommentScreen(int idM, String name) {
    this.idM = idM;
    this.name = name;
  }

  @override
  _AddCommentScreenState createState() => _AddCommentScreenState();
}

class _AddCommentScreenState extends State<AddCommentScreen> {
  final _key = GlobalKey<FormState>();

  // List<Movie> listMovie = [];

  String _username = '';
  String _email = '';
  String _comment = '';
  int send = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.name, style: kSelectedTextTabView),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextFormField(
                  maxLength: 25,
                  maxLines: 1,
                  minLines: 1,
                  onSaved: (String value) {
                    _username = value;
                  },
                  validator: validatorField_name_email,
                  style: kAllNewRowText,
                  textDirection: TextDirection.rtl,
                  //
                  decoration: InputDecoration(
                    icon: Icon(Icons.person, color: Color(0xFF92E348)),
                    fillColor: Color(0xFF92E348),
                    labelText: 'نام کاربری',
                    counterStyle: kText,
                    labelStyle: kText2,
                    errorBorder: outlineInputBorderStyle(),
                    border: outlineInputBorderStylee(),
                    focusedBorder: outlineInputBorderStylee(),
                    enabledBorder: outlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextFormField(
                  maxLength: 50,
                  maxLines: 1,
                  minLines: 1,
                  onSaved: (String value) {
                    _email = value;
                  },
                  validator: validatorField_name_email,
                  style: kAllNewRowText,
                  textDirection: TextDirection.rtl,
                  //
                  decoration: InputDecoration(
                    icon: Icon(Icons.email, color: Color(0xFF92E348)),
                    fillColor: Color(0xFF92E348),
                    labelText: 'ایمیل',
                    counterStyle: kText,
                    labelStyle: kText2,
                    errorBorder: outlineInputBorderStyle(),
                    border: outlineInputBorderStylee(),
                    focusedBorder: outlineInputBorderStylee(),
                    enabledBorder: outlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: TextFormField(
                  maxLength: 400,
                  minLines: 3,
                  maxLines: 8,

                  onSaved: (String value) {
                    _comment = value;
                  },
                  validator: validatorField_comment,
                  style: kAllNewRowText,
                  textDirection: TextDirection.rtl,
                  //
                  decoration: InputDecoration(
                    icon: Icon(Icons.person, color: Color(0xFF92E348)),
                    fillColor: Color(0xFF92E348),
                    labelText: 'دیدگاه',
                    counterStyle: kText,
                    labelStyle: kText2,
                    errorBorder: outlineInputBorderStyle(),
                    border: outlineInputBorderStylee(),
                    focusedBorder: outlineInputBorderStylee(),
                    enabledBorder: outlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                child: ShopButton(
                  text: 'ثبت دیدگاه',
                  icon: Icons.add_comment,
                  onTap: () {
                    if (_key.currentState.validate()) {
                      _key.currentState.save();
                      setState(() {
                        send = 1;
                      });
                      sendInfo();

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieScreen(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  sendInfo() async {
    var url = Uri.parse(AppUrl.url +
        'add_comment&comment_id='
            '${widget.idM.toString()}');

    await http.post(url, body: {
      'username': _username,
      'email': _email,
      'comment': _comment,
    }).then((value) {
      print(value.body);
      setState(() {
        send = 0;
      });
    });
  }

  String validatorField_name_email(String value) {
    if (value.trim().length <= 6 || value.trim().length >= 50) {
      return 'فیلد را با دقت تکمیل کنید';
    }
  }

  String validatorField_comment(String value) {
    if (value.trim().length <= 6 || value.trim().length >= 400) {
      return 'فیلد را با دقت تکمیل کنید';
    }
  }
}
