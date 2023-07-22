import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:gentleroom/models/products.dart';
import 'package:gentleroom/pages/home.dart';
import 'package:gentleroom/services/loading.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

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
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                    (Route<dynamic> route) => false);
              },
              child: Text(
                "gentleroom",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'RenogareSoft',
                    fontSize: 16,
                    letterSpacing: -0.5),
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
                  child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: BootstrapContainer(
                      fluid: false,
                      children: [
                        BootstrapRow(
                          height: 60,
                          children: <BootstrapCol>[
                            BootstrapCol(
                                sizes: 'col-12 col-md-6',
                                offsets: 'offset-0 offset-md-3',
                                child: Column(
                                  children: [
                                    Image.network(
                                        "https://www.gentleroom.mn/files/product/${widget.product!.photo.toString()}"),
                                    widget.product!.photos == null
                                        ? Container()
                                        : Column(
                                            children: widget.product!.photos!
                                                .map((e) {
                                            return Container(
                                              child: Image.network(
                                                  "https://www.gentleroom.mn/files/product/${e.photo.toString()}"),
                                            );
                                          }).toList()),
                                  ],
                                )),
                          ],
                        ),
                      ],
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
                )
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
    List<int> list = [1, 2, 3];
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      child: CarouselSlider(
        options: CarouselOptions(
          enableInfiniteScroll: false,
          viewportFraction: 0.3,
        ),
        items: list
            .map((item) => Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    border: Border(
                      right: BorderSide(width: 1, color: Colors.black),
                    ),
                  ),
                  child: Center(child: Text(item.toString())),
                ))
            .toList(),
      ),
    );
  }
}
