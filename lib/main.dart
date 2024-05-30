import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _suggestions = ['Quần', 'Áo', 'Giày'];
  List<String> gridviewItems = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
    "Item 9",
    "Item 10",
  ];
  List<Product> products = [
    Product(
      id: "1",
      imageURL: "assets/products/product1.png",
      name: "Sản phẩm 1",
      price: "100.000 đ",
    ),
    Product(
      id: "2",
      imageURL: "assets/products/product2.png",
      name: "Sản phẩm 2",
      price: "100.000 đ",
    ),
    Product(
      id: "3",
      imageURL: "assets/products/product3.png",
      name: "Sản phẩm 3",
      price: "100.000 đ",
    ),
    Product(
      id: "4",
      imageURL: "assets/products/product4.png",
      name: "Sản phẩm 4",
      price: "100.000 đ",
    ),
    Product(
      id: "5",
      imageURL: "assets/products/product5.png",
      name: "Sản phẩm 5",
      price: "100.000 đ",
    ),
    Product(
      id: "6",
      imageURL: "assets/products/product6.png",
      name: "Sản phẩm 6",
      price: "100.000 đ",
    ),
    Product(
      id: "7",
      imageURL: "assets/products/product7.png",
      name: "Sản phẩm 7",
      price: "100.000 đ",
    )
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300.0),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFF486EFF),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: AppBar(
                      title: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Fashion shops', style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  width: 350.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.all(0.5),
                  child: TextField( // Replace Row with TextField
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: 'Tìm kiếm',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/products/product5.png', width: 48.0, height: 48.0,),
                          ),
                          Text('Hats', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/products/product1.png', width: 48.0, height: 48.0,),
                          ),
                          Text('Shirts', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/products/product4.png', width: 48.0, height: 48.0,),
                          ),
                          Text('Pants', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50.0)),
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              ),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/categories/category1.png', width: 48.0, height: 48.0,),
                          ),
                          Text('Shoes', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sản phẩm bán chạy', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 5.0),
              height: 130.0, // You can adjust the height as needed
              width: double.infinity, // Set width to infinity for horizontal scrolling
              child: GridView.builder(
                scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                itemCount: products.length, // Number of items in the list
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // Only one item per row (horizontal layout)
                  mainAxisSpacing: 25.0, // Spacing between items horizontally
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    // Your product item widget
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: Colors.black, width: 1.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(product.imageURL, width: 64.0, height: 64.0),
                          Text(product.name, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Text(product.price, style: TextStyle(fontSize: 12.0, color: Colors.red)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sản phẩm mới nhất', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 5.0),
              height: 130.0, // You can adjust the height as needed
              width: double.infinity, // Set width to infinity for horizontal scrolling
              child: GridView.builder(
                scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                itemCount: products.length, // Number of items in the list
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // Only one item per row (horizontal layout)
                  mainAxisSpacing: 25.0, // Spacing between items horizontally
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    // Your product item widget
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: Colors.black, width: 1.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(product.imageURL, width: 64.0, height: 64.0),
                          Text(product.name, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Text(product.price, style: TextStyle(fontSize: 12.0, color: Colors.red)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sản phẩm khác', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, top: 5.0),
              height: 130.0, // You can adjust the height as needed
              width: double.infinity, // Set width to infinity for horizontal scrolling
              child: GridView.builder(
                scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
                itemCount: products.length, // Number of items in the list
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, // Only one item per row (horizontal layout)
                  mainAxisSpacing: 25.0, // Spacing between items horizontally
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    // Your product item widget
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      border: Border.all(color: Colors.black, width: 1.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(product.imageURL, width: 64.0, height: 64.0),
                          Text(product.name, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                          Text(product.price, style: TextStyle(fontSize: 12.0, color: Colors.red)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Giỏ hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Tài khoản',
          )
        ],
      ),
    );
  }
}

class Product {
  final String id;
  final String imageURL;
  final String name;
  final String price;

  Product({required this.id, required this. imageURL, required this.name, required this.price});
}

