import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  static final String id = 'MyHomePage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //margin best seleres item
  static final double margin1 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // brightness: Brightness.light,
          elevation: 0,
          backgroundColor: Color(0xFF018197),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 100,
                child:
                    Image(image: AssetImage('assets/images/amazon_logo.png')),
              ),
              Container(
                  height: 100,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          onPressed: () {}),
                    ],
                  )),
            ],
          )),
      drawer: Drawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xFF018197),
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'What are you looking for ?',
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xFF018197),
                            ),
                            suffixIcon: Icon(
                              Icons.camera_alt,
                              color: Color(0xFF018197),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  //#location
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Delever to Korea, Republic of',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  //#reklama
                  Container(
                    color: Colors.white,
                    height: 140,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/image_1.jpeg'),
                                ),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(70),
                                    bottomRight: Radius.circular(70))),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          width: 180,
                          color: Colors.white,
                          child: Center(
                            child: Text(
                              'We ship 45 million products',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: 5,
                  ),
                  //#Sing in
                  Container(
                    color: Colors.white,
                    height: 160,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
                          child: Text(
                            'Sign in for the best experience',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        //#Sing in
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
                          decoration: BoxDecoration(color: Colors.orange),
                          child: Center(
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
                          child: Text(
                            'Create an account',
                            style: TextStyle(fontSize: 17, color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  //#deal of the
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.fromLTRB(20,10,20,16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Deal of the Day',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            height: 240,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 1,
                                  offset: Offset(0.4, 0.2),
                                  spreadRadius: 1.5),
                            ]),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage('assets/images/item_7.jpeg'),
                                  ),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerRight,
                                      colors: [
                                        Colors.black.withOpacity(0.8),
                                        Colors.black.withOpacity(0.6),
                                        Colors.black.withOpacity(0.5),
                                        Colors.black.withOpacity(0.2),
                                      ])),
                            )),
                        SizedBox(height: 10),
                        Text(
                          'Up to 31% off APC UPS Battery Back',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '\$10.99-\$79.9',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  //  #best sellers in
                  SizedBox(height: 8),

                  Container(
                    padding: EdgeInsets.fromLTRB(20,10,20,16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Best seller in the Electronics',
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              offset: Offset(0.4, 0.2),
                                              spreadRadius: 1.5)
                                        ]),
                                        margin: EdgeInsets.all(margin1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/item_1.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              offset: Offset(0.4, 0.2),
                                              spreadRadius: 1.5)
                                        ]),
                                        margin: EdgeInsets.all(margin1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/item_2.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              offset: Offset(0.4, 0.2),
                                              spreadRadius: 1.5)
                                        ]),
                                        margin: EdgeInsets.all(margin1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/item_3.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              offset: Offset(0.4, 0.2),
                                              spreadRadius: 1.5)
                                        ]),
                                        margin: EdgeInsets.all(margin1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/item_4.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 1,
                              ),
                            ],
                          ),

                        ),


                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.fromLTRB(20,10,20,16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Top products in Camera',
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 1,
                                        offset: Offset(0.4, 0.2),
                                        spreadRadius: 1.5)
                                  ]),
                                  margin: EdgeInsets.all(margin1),
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/item_2.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              offset: Offset(0.4, 0.2),
                                              spreadRadius: 1.5)
                                        ]),
                                        margin: EdgeInsets.all(margin1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/item_3.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              offset: Offset(0.4, 0.2),
                                              spreadRadius: 1.5)
                                        ]),
                                        margin: EdgeInsets.all(margin1),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/item_4.jpeg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                flex: 1,
                              ),
                            ],
                          ),

                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
