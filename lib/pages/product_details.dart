import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:gentleroom/models/products.dart';
import 'package:gentleroom/services/loading.dart';

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
    print(widget.product);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 16,
          ),
        ),
        title: BootstrapContainer(
          fluid: false,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "gentleroom",
                  style: TextStyle(color: Colors.black, fontFamily: 'RenogareSoft', fontSize: 16, letterSpacing: -0.5),
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
          ],
        ),
      ),
      body: widget.product == null
          ? const Loading()
          : SingleChildScrollView(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Image.network("https://www.gentleroom.mn/files/product/${widget.product!.photo.toString()}"),
                  Text(widget.product!.title.toString())
                ],
              ),
            ),
    );
  }
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
