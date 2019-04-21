import 'package:flutter/material.dart';
import 'package:pavium/model/favorite.dart';
import 'package:pavium/store/book.dart';
import 'package:pavium/store/favorite.dart';
import 'package:pavium/util/paginator.dart';

class TextPage extends StatefulWidget {
  final Favorite favorite;
  final FavoriteStore favStore;
  final BookStore bookStore;

  const TextPage(this.favorite, this.favStore, this.bookStore);

  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  String text;

  Future asyncInit() async {
    text = await widget.favStore.loadFavorite(widget.favorite);
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: asyncInit(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        Size size = MediaQuery.of(context).size;
        print(size);

        var _pages = Paginator.getPages(text, size.height, size.width, 25);
        print(_pages.length);

        return Scaffold(
          body: Center(
            child: Text(
              _pages[0],
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
