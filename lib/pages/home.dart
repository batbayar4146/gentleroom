import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:gentleroom/models/products.dart';
import 'package:gentleroom/repositories/main.dart';
import 'package:gentleroom/services/loading.dart';

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
                  style: TextStyle(color: Colors.black, fontFamily: 'RenogareSoft'),
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
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("https://www.gentleroom.mn/files/product/${file.photo.toString()}"),
                fit: BoxFit.cover),
          ),
        ),
        Text(
          file.title.toString(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("Single size - ${file.price1}"),
        Text("Double size - ${file.price2}"),
        Text("King size - ${file.price3}"),
      ],
    );
  }
}

class MySearch extends SearchDelegate {
  // this is manual list of query for suggesting user.
  List<String> data = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(
            Icons.clear,
            color: Colors.red,
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
        icon: const Icon(Icons.arrow_back),
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
    // will show a query hint suggestion "flutter search bar with listview"
    List<String> suggesstions = data.where((element) {
      final result = element.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();
    return ListView.builder(
        itemCount: suggesstions.length,
        itemBuilder: (context, index) {
          final suggestion = suggesstions[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        });
  }
}
