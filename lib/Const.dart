import 'package:flutter/material.dart';

const kSelectedTextTabView = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontFamily: 'bold',
    fontWeight: FontWeight.w900);

const kUnSelectedTextTabView = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontFamily: 'title',
    fontWeight: FontWeight.bold);

final kDrawerText = TextStyle(
    fontSize: 14,
    color: Color(0xFF92E348),
    fontFamily: 'bold',
    fontWeight: FontWeight.w900);

final kDrawerText1 = TextStyle(
    fontSize: 14,
    color: Color(0xFF92E348),
    fontFamily: 'title',
    fontWeight: FontWeight.w900);

final kText = TextStyle(
  fontSize: 12,
  color: Color(0xFF92E348),
  fontFamily: 'title',
);

final kText2 = TextStyle(
  fontSize: 14,
  color: Colors.white,
  fontFamily: 'title',
);

const kAllNewRowText = TextStyle(
    color: Colors.white,
    fontFamily: 'title',
    fontSize: 14,
    fontWeight: FontWeight.w900);

final kAllRowText = TextStyle(
    color: Color(0xFF92E348),
    fontSize: 16,
    fontFamily: 'bold',
    fontWeight: FontWeight.w900);

final kHomeTitleName = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontFamily: 'bold',
    fontWeight: FontWeight.w900);

final kHomeTitle = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontFamily: 'bold',
    fontWeight: FontWeight.w900);

final kHomeTitle1 = TextStyle(
  fontSize: 14,
  color: Colors.grey,
  fontFamily: 'bold',
);

final kHomeSaleSakht = TextStyle(
  color: Colors.grey,
  fontFamily: 'title',
  fontSize: 14,
);

final kPageViewName = TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontFamily: 'bold',
    fontWeight: FontWeight.w900);

final kPageViewButton = TextStyle(
    color: Colors.black,
    fontFamily: 'title',
    fontSize: 14,
    fontWeight: FontWeight.w800,
    wordSpacing: -2);

final kStarStar = TextStyle(
    color: Colors.white,
    fontFamily: 'bold',
    fontWeight: FontWeight.w900,
    fontSize: 18);

final kAllScreenNameText = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'bold',
    fontWeight: FontWeight.w600);

final kAllScreenExpansionTitleText = TextStyle(
  fontFamily: 'bold',
  color: Colors.grey,
  fontSize: 14,
);

final kAllScreenDescText = TextStyle(
  fontSize: 12,
  fontFamily: 'title',
  color: Colors.white,
);

final kHomeComment1 = TextStyle(
  fontSize: 12,
  color: Colors.grey,
  fontFamily: 'bold',
);

final kDeleteText = TextStyle(
    color: Colors.red,
    fontFamily: 'bold',
    fontSize: 14);

final kPriceText = TextStyle(
    color: Colors.green, fontFamily: 'bold', fontSize: 16);
final kPriceText1 = TextStyle(
    color: Colors.green, fontFamily: 'bold', fontSize: 25);

//
//
//

//TextFormFieldStyle_AddComment
outlineInputBorderStyle() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: Colors.red, width: 3),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(25),
      bottomLeft: Radius.circular(25),
    ),
  );
}

//TextFormFieldStyle_AddComment
outlineInputBorderStylee() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF92E348), width: 3),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(25),
      bottomLeft: Radius.circular(25),
    ),
  );
}

//TextFormFieldStyle_AddComment
outlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1),
    borderRadius: BorderRadius.only(
      bottomRight: Radius.circular(25),
      topRight: Radius.circular(25),
    ),
  );
}

const CartRowItem_Decoration = BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(15),
  ),
  color: Colors.white38,
);

final cartMainBorderDecoration=BoxDecoration(
  borderRadius: BorderRadius.all(
    Radius.circular(20),
  ),
  border: Border.all(width: 1, color: Colors.white38),
);

final DeleteButton_In_Cart_Decoration=BoxDecoration(
  border: Border.all(width: 1, color: Colors.red),
  borderRadius: BorderRadius.all(
    Radius.circular(5),
  ),
);


final DetailPage_Info1_decor=BoxDecoration(
  border: Border.all(
    width: 1,
    color: Color(0xFF92E348),
  ),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(40),
    topRight: Radius.circular(40),
  ),
);

final DetailPage_Info1_2_decor=BoxDecoration(
  border: Border.all(
    width: 1,
    color: Color(0xFF92E348),
  ),
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(40),
    bottomRight: Radius.circular(40),
  ),
);