import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: Cambiar luego por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[_CustomAppBar()],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.yellow[600],
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Text(
          'movie.title',
          style: TextStyle(color: Colors.black),
        ),
        background: FadeInImage(
          image: NetworkImage('https://via.placeholder.com/500x300'),
          placeholder: AssetImage('assets/loading.gif'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
