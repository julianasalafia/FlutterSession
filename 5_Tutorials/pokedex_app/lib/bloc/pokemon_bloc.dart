import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/bloc/pokemon_event.dart';
import 'package:pokedex_app/bloc/pokemon_state.dart';
import 'package:pokedex_app/pokemon_repository.dart';

class PokemonBloc extends Bloc<PokemonEvent, PokemonState?> {
  final _pokemonRepository = PokemonRepository();
  PokemonBloc() : super(PokemonInitial());

  @override
  Stream<PokemonState> mapEventToState(PokemonEvent event) async* {
    if (event is PokemonPageRequest) {
      yield PokemonLoadInProgress();

      try {
        final pokemonPageResponse = await _pokemonRepository.getPokemonPage(0);
        yield PokemonPageLoadSuccess(
            pokemonListings: pokemonPageResponse.pokemonListings,
            canLoadNextPage: pokemonPageResponse.canLoadNextPage);
      } on Error catch (e) {
        yield PokemonPageLoadFailed(error: e);
      }
    }
  }
}
