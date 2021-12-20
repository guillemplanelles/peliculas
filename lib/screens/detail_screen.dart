import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: Cambiar luego por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            _PosterAndTitle(),
            SizedBox(
              height: 10,
            ),
            _Overview(),
            CastingCards()
          ]))
        ],
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
        titlePadding: EdgeInsets.only(bottom: 10),
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

class _PosterAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text('movie.title',
                  style: textTheme.headline5,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2),
              Text('move.original.title',
                  style: textTheme.subtitle1,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1),
              Row(
                children: [
                  Icon(
                    Icons.star_outline,
                    size: 15,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'movie.voteAvarage',
                    style: textTheme.caption,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          'Reprehenderit occaecat anim ad  reprehenderit occaecat dolor Lorem cillum Lorem nulla esse aute eu. Ipsum magna duis duis ut mollit excepteur elit. Aute aliqua occaecat elit consequat consequat mollit. Officia veniam aliqua in nostrud. Voluptate dolor non fugiat amet ut e Id id id anim culpa commodo eiusmod nostrud magna. Minim elit in nulla ullamco incididunt dolore anim nostrud exercitation. Duis velit commodo non nisi ut dolor pariatur voluptate minim ad dolore ullamco. Elit eiusmod ad laboris laborum esse nulla Lorem laborum. Eu duis pariatur deserunt officia qui anim consectetur qui officia enim id non. Enim Lorem sit commodo occaecat. Velit esse enim sunt et exercitation cillum nostrud ex elit ad.x deserunt sint. Ex non minim mollit ullamco nisi et fugiat ullamco sit sint id tempor proident. Proident ex non est non incididunt aute commodo id. Laborum Lorem anim anim labore qui quis. Nostrud qui nulla incididunt tempor consectetur. Minim adipisicing aliqua pariatur reprehenderit proident exercitation laboris aute elit. Ad fugiat duis esse elit nulla do. Magna cillum cillum enim fugiat esse tempor esse.',
          style: Theme.of(context).textTheme.bodyText1),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    );
  }
}
