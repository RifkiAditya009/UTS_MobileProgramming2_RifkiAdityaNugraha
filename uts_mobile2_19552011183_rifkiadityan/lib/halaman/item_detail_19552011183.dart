import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_mobile2_19552011183_rifkiadityan/halaman/home_dashboard_19552011183.dart';

class ItemDetailPage extends StatelessWidget {
  final SendDataModel kirimDataModel;
  const ItemDetailPage({Key? key, required this.kirimDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = PageController();
    //deskripsi
    String deskripsi1 =
        "Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!";
    String deskripsi2 =
        "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.";
    String deskripsi3 =
        "Pop it in your wallet, stick it to your wall – the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell.";
    String deskripsi3_lanjutan =
        "Using professional high-quality film technology (as you’d expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.";
    String deskripsi4 =
        "Mini moments with maximum impact. What’s your next mini moment?";
    String deskripsi5 =
        "Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue";
    String deskripsi6 =
        "Depending upon the weather conditions, you can easily control brightness to obtain a great picture";
    String deskripsi7 =
        "Live in the moment and enjoy your Mini 7+, and give your day some instant fun!";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 12),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: kirimDataModel.dataWarna)),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: kirimDataModel.dataWarna,
              ),
              alignment: Alignment.center,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeDashboardPage(),
                    ));
              },
            ),
          ),
        ),
        title: Image.asset(
          'images/fujifilm-banner.png',
          scale: 5,
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 12),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
              ))
        ],
      ),

      //body
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              //detail image
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 15),
                  child: Container(
                    height: 180,
                    child: Image.asset(kirimDataModel.dataGambar),
                  ),
                ),
              ),
              //text instax
              Positioned(
                top: 220,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 55,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    'Instax',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              //seri instax
              Positioned(
                top: 220,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 55,
                    bottom: 15,
                    left: 70,
                    right: 15,
                  ),
                  child: Text(
                    kirimDataModel.dataSeri,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kirimDataModel.dataWarna,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              //deskripsi 1
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 310,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    deskripsi1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              //point and shoot
              Positioned(
                top: 315,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 50,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    'Point & Shoot',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //deskripsi 2
              Padding(
                padding: EdgeInsets.only(
                  top: 390,
                  bottom: 15,
                  left: 15,
                  right: 15,
                ),
                child: Text(
                  deskripsi2,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),

              //mini but full-
              Positioned(
                top: 400,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      bottom: 15,
                      left: 15,
                      right: 15,
                    ),
                    child: Text(
                      'Mini But With Full-Size Memories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              //deskripsi 3
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 485,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    deskripsi3,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              //lanjutan3
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 525,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    deskripsi3_lanjutan,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              //Mini Film
              Positioned(
                top: 545,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      bottom: 15,
                      left: 15,
                      right: 15,
                    ),
                    child: Text(
                      'Mini Film',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              //
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 620,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    deskripsi4,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              //Plenty of Great Color Choices
              Positioned(
                top: 610,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      bottom: 15,
                      left: 15,
                      right: 15,
                    ),
                    child: Text(
                      'Plenty of Great Color Choices',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              //deskripsi5
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 690,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    deskripsi5,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              //The Mini 7+ Has Your Back!
              Positioned(
                top: 690,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      bottom: 15,
                      left: 15,
                      right: 15,
                    ),
                    child: Text(
                      'The Mini 7+ Has Your Back!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              //deskripsi6
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 770,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    deskripsi6,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

              //Fun All The Time!
              Positioned(
                top: 765,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                      bottom: 15,
                      left: 15,
                      right: 15,
                    ),
                    child: Text(
                      'Fun All The Time!',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              //deskripsi7
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 845,
                    bottom: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Text(
                    deskripsi7,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      //bottom
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.white,
          height: 75,
          child: Stack(
            children: <Widget>[
              //symbol usdollar
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '\$',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              //text Harga
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Text(
                    kirimDataModel.dataHarga,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              //button belisekarang
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Container(
                    width: 108,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Buy Now'),
                      style: ElevatedButton.styleFrom(
                        primary: kirimDataModel.dataWarna,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
