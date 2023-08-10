import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/bloc/pokemon_details_cubit.dart';
import 'data/pokemon_details.dart';

class PokemonDetailsView extends StatelessWidget {
  const PokemonDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: BlocBuilder<PokemonDetailsCubit, PokemonDetails?>(
        builder: (context, details) {
          return details != null
              ? Center(child: Text(details!.name))
              : Center(
                  child: CircularProgressIndicator(),
                );
        },
      ),
    );
  }
}
