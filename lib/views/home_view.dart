import 'package:app_peliculas/generated/l10n.dart';
import 'package:app_peliculas/provider/movie_provider.dart';
import 'package:app_peliculas/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final providermovie = Provider.of<MovieProvider>(context);

    // /print(providermovie.onDisplaymovie);
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context).title),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(
              movies: providermovie.onDisplaymovie,
            ),
            MovieSlider(
              
              listadepelis: providermovie.popularMovies,
              titulo: "Populares",
              onNetxPage: () => providermovie.getPopularovies(),
            ),
          ],
        ),
      ),
    );
  }
}
