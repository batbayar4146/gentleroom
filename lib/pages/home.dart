import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:gentleroom/models/products.dart';
import 'package:gentleroom/pages/product_details.dart';
import 'package:gentleroom/repositories/main.dart';
import 'package:gentleroom/services/loading.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Products>? data;

  @override
  void initState() {
    super.initState();
    _getList();
  }

  _getList() async {
    await MainRepository().getList().then((value) {
      setState(() {
        data = value.products;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottomOpacity: 0.0,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: BootstrapContainer(
          fluid: false,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "gentleroom",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'RenogareSoft',
                      fontSize: 16,
                      letterSpacing: -0.5),
                ),
                GestureDetector(
                  onTap: () {
                    showSearch(context: context, delegate: MySearch());
                  },
                  child: Image.asset(
                    "assets/images/loupe.png",
                    height: 16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: data == null
          ? const Loading()
          : SingleChildScrollView(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Wrap(
                children: data!.map(
                  (e) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width > 768
                          ? MediaQuery.of(context).size.width / 3 - 10
                          : MediaQuery.of(context).size.width / 2 - 10,
                      child: ContentWidget(file: e),
                    );
                  },
                ).toList(),
              ),
            ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
    required this.file,
  }) : super(key: key);

  final Products file;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetailsPage(product: file)),
            (Route<dynamic> route) => false);
      },
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            width: double.infinity,
            margin: const EdgeInsets.all(5),
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://www.gentleroom.mn/files/product/${file.photo.toString()}"),
                  fit: BoxFit.cover),
            ),
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 10, right: 10),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Text(
                "New",
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                    color: Colors.black,
                    letterSpacing: 0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            file.title.toString().toLowerCase(),
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600, letterSpacing: 0, fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Single size - ${file.price1}",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300, letterSpacing: 0, fontSize: 12),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            "Double size - ${file.price2}",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300, letterSpacing: 0, fontSize: 12),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            "King size - ${file.price3}",
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w300, letterSpacing: 0, fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class MySearch extends SearchDelegate {
  Future<List<Products>?> data = MainRepository().getList().then((value) {
    return value.products;
  });

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
