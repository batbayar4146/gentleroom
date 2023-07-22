import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gentleroom/models/products.dart';
import 'package:gentleroom/pages/home.dart';
import 'package:gentleroom/services/loading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, this.product});
  final Products? product;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const MyHomePage()),
                    (Route<dynamic> route) => false);
              },
              child: const Text(
                "gentleroom",
                style: TextStyle(color: Colors.black, fontFamily: 'RenogareSoft', fontSize: 16, letterSpacing: -0.5),
              ),
            ),
            GestureDetector(
              onTap: () {
                showSearch(context: context, delegate: MySearch());
              },
              child: Image.asset(
                "assets/images/loupe.png",
                height: 14,
              ),
            )
          ],
        ),
      ),
      body: widget.product == null
          ? const Loading()
          : Column(
              children: [
                Flexible(
                  flex: 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width > 768
                        ? MediaQuery.of(context).size.width / 3 - 10
                        : MediaQuery.of(context).size.width / 1 - 20,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.only(bottom: 20),
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          Image.network("https://www.gentleroom.mn/files/product/${widget.product!.photo.toString()}"),
                          widget.product!.photos == null
                              ? Container()
                              : Column(
                                  children: widget.product!.photos!.map((e) {
                                  return Container(
                                    child:
                                        Image.network("https://www.gentleroom.mn/files/product/${e.photo.toString()}"),
                                  );
                                }).toList()),
                        ],
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: BasicDemo(),
                  ),
                ),
              ],
            ),
    );
  }
}

Widget _morePhotos() {
  return Container();
}

class MySearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(
            Icons.clear,
            color: Colors.black,
            size: 16,
          ),
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
        ),
      ];
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        icon: const Icon(
          Icons.arrow_back,
          size: 16,
        ),
        onPressed: () {
          close(context, null);
        },
      );
  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
        ),
      );
  @override
  Widget buildSuggestions(BuildContext context) {
    // List<Products>? urdun;
    // data.then((value) {
    //   urdun = value;
    // });
    // List<Products> suggesstions = urdun!.where((element) {
    //   final result = element.title.toString().toLowerCase();
    //   final input = query.toLowerCase();
    //   return result.contains(input);
    // }).toList();
    return Container();
    // return ListView.builder(
    //     itemCount: suggesstions.length,
    //     itemBuilder: (context, index) {
    //       final suggestion = suggesstions[index];
    //       return ListTile(
    //         title: Text(suggestion.title.toString()),
    //         onTap: () {
    //           query = suggestion.title.toString();
    //           showResults(context);
    //         },
    //       );
    //     });
  }
}

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List list = [
      {"photo": "Call.png", "title": "7755-1112", "link": "77551112", "type": "phone"},
      {"photo": "Facebook.png", "title": "facebook", "link": "https://www.facebook.com/gentleroom", "type": "url"},
      {
        "photo": "Instagram.png",
        "title": "instagram",
        "link": "https://www.instagram.com/thegentleroom/",
        "type": "url"
      }
    ];
    return Container(
      padding: const EdgeInsets.only(bottom: 15, top: 15),
      child: CarouselSlider(
        options: CarouselOptions(
          enableInfiniteScroll: true,
          viewportFraction: 0.3,
          autoPlay: true,
        ),
        items: list
            .map((item) => GestureDetector(
                  onTap: () async {
                    if (item['type'].toString() == "phone") {
                      final Uri launchUri = Uri(
                        scheme: 'tel',
                        path: item['link'].toString(),
                      );
                      await launchUrl(launchUri);
                    } else {
                      final Uri url = Uri.parse(item['link'].toString());
                      if (!await launchUrl(url)) {
                        throw Exception('Could not launch $url');
                      }
                    }
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/${item['photo']}",
                          height: 16,
                        ),
                        Text(
                          item['title'].toString(),
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w600, color: Colors.black, letterSpacing: -0.5, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
