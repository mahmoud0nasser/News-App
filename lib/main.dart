import 'package:flutter/material.dart';

import 'views/home_view.dart';

//! Api Key
// 5b29ba5a579247039238a9305c3b1ae5

void main() {
  // getGeneralNews();
  // NewsService(Dio()).getNews();
  runApp(const NewsApp());
}

/* final dio = Dio();

void getGeneralNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=5b29ba5a579247039238a9305c3b1ae5');
  print(response);
}

void getSportsNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=5b29ba5a579247039238a9305c3b1ae5');
  print(response);
} */

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

/* void main() {
  print(createOrderMessage());
}

dynamic createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your Order is: $order';
}

dynamic fetchUserOrder() =>
    // imagine that this function is more complex and slow
    Future.delayed(
      const  Duration(seconds: 2),
      () => 'Large Latte',
    );
 */