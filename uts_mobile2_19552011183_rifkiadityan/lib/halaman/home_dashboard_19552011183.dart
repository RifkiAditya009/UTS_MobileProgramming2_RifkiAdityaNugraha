import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uts_mobile2_19552011183_rifkiadityan/halaman/item_detail_19552011183.dart';

//kelas kirimData
class SendDataModel {
  final String dataSeri;
  final String dataHarga;
  final String dataGambar;
  final Color dataWarna;

  SendDataModel(this.dataSeri, this.dataHarga, this.dataGambar, this.dataWarna);
}

class HomeDashboardPage extends StatefulWidget {
  const HomeDashboardPage({Key? key}) : super(key: key);

  @override
  _HomeDashboardPageState createState() => _HomeDashboardPageState();
}

class _HomeDashboardPageState extends State<HomeDashboardPage> {
  TextEditingController searchController = new TextEditingController();
  /*
  var _controllerSeri = new TextEditingController();
  var _controllerWarna = new TextEditingController();
  var _controllerHarga = new TextEditingController();
  var _controllerGambar = new TextEditingController(); */

  static List<String> daftarGambar = [
    'images/InstaxMini7plus_Mint_R.png',
    'images/InstaxMini7plus_Blue_R.png',
    'images/InstaxMini7plus_Choral_R.png',
    'images/InstaxMini7plus_Pink_R.png',
    'images/InstaxMini7plus_Lavender_R.png',
  ];
  static List<String> daftarNama = [
    "Mini Mint 7+",
    "Mini Blue 7+",
    "Mini Choral 7+",
    "Mini Pink 7+",
    "Mini Lavender 7+",
  ];
  static List<String> daftarHarga = [
    "49.90",
    "50.90",
    "51.90",
    "52.90",
    "53.90",
  ];
  static List<Color> daftarWarna = [
    Color(0xff70b1a1),
    Color(0xff77a0c6),
    Color(0xffb0463c),
    Color(0xffcf9496),
    Color(0xff855f8c),
  ];
  String samaSemua = "Limited Edition";
  String instax = "Instax";
  String usd = "\$";

  final List<SendDataModel> KirimData = List.generate(
      daftarNama.length,
      (index) => SendDataModel(daftarNama[index], daftarHarga[index],
          daftarGambar[index], daftarWarna[index]));

  late final List<String> images;
  late final List<String> title;
  late final List<String> harga;
  late List<String> filteredList;
  late String keyword;

  //baru

  @override
  void initState() {
    super.initState();
    // ignore: deprecated_member_use, prefer_collection_literals
    filteredList = <String>[];
    keyword = '';
  }

  //fungsi membuat list
  createListView() {
    return Expanded(
        child: ListView.separated(
            itemCount: daftarNama.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 15, right: 45),
                child: Stack(
                  overflow: Overflow.visible,
                  fit: StackFit.loose,
                  children: <Widget>[
                    //box listView
                    Container(
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: KirimData[index].dataWarna,
                      ),
                    ),

                    //title: limitedEdition
                    Positioned(
                        child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          samaSemua,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )),

                    //text : Instax
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(top: 43, left: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            instax,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //text: seriInstax
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(top: 43, left: 56),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            KirimData[index].dataSeri,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //symbol dollar
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(top: 73, left: 15),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            usd,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //text: harga
                    Positioned(
                      child: Padding(
                        padding: EdgeInsets.only(top: 73, left: 32),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            KirimData[index].dataHarga,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Button beli
                    Positioned(
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 118, bottom: 15, left: 15),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ItemDetailPage(
                                          kirimDataModel: KirimData[index])),
                                );
                              },
                              child: Text(
                                'Buy',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: KirimData[index].dataWarna,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //here image container
                    //image Kamera
                    Positioned(
                      right: -30,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 130,
                            child: Image.asset(KirimData[index].dataGambar),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(color: Colors.white);
            }));
  }

  //fungsi list
  createFilteredListView() {
    return Expanded(
      child: ListView.separated(
          itemCount: filteredList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(left: 15, right: 45),
              child: Stack(
                overflow: Overflow.visible,
                fit: StackFit.loose,
                children: <Widget>[
                  //box listView
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: KirimData[index].dataWarna,
                    ),
                  ),

                  //title: limitedEdition
                  Positioned(
                      child: Padding(
                    padding: EdgeInsets.only(top: 15, left: 15, bottom: 15),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        samaSemua,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )),

                  //text : Instax
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(top: 43, left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          instax,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //text: seriInstax
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(top: 43, left: 56),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          KirimData[index].dataSeri,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //symbol dollar
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(top: 73, left: 15),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          usd,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //text: harga
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(top: 73, left: 32),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          KirimData[index].dataHarga,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),

                  //Button beli
                  Positioned(
                    child: Padding(
                      padding: EdgeInsets.only(top: 118, bottom: 15, left: 15),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 60,
                          height: 32,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ItemDetailPage(
                                        kirimDataModel: KirimData[index])),
                              );
                            },
                            child: Text(
                              'Buy',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: KirimData[index].dataWarna,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //here image container
                  //image Kamera
                  Positioned(
                    right: -30,
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 130,
                          child: Image.asset(KirimData[index].dataGambar),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.white,
            );
          }),
    );
  }

  //cari data
  cariData() {
    filteredList = <String>[];
    for (int i = 0; i < daftarNama.length; i++) {
      var item = daftarNama[i];
      if (item.toLowerCase().contains(keyword.toLowerCase())) {
        filteredList.add(item);
      }
    }
    return createFilteredListView();
  }

  @override
  Widget build(BuildContext context) {
    //deklarasi fungsi
    searchController.addListener(() {
      setState(() {
        keyword = searchController.text;
      });
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(left: 12),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ItemDetailPage()),
                    ); */
                },
              ),
            )),

        //judul dengan Gambar
        title: Image.asset(
          'images/fujifilm-banner.png',
          scale: 5,
        ),
        centerTitle: true,

        //
        backgroundColor: Colors.white,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 12, top: 5, bottom: 5),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: IconButton(
                    icon: Icon(Icons.shopping_bag),
                    onPressed: () {},
                  )))
        ],
      ),

      //textField Cari
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextField(
                    controller: searchController,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.lightBlue),
                            borderRadius: BorderRadius.circular(15)),
                        contentPadding: EdgeInsets.only(left: 10, right: 5),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 12)),
                    textAlign: TextAlign.left),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            (keyword.isEmpty) ? createListView() : cariData(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
