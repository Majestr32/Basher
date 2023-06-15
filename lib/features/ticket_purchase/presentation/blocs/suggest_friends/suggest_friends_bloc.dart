import 'dart:async';

import 'package:allxclusive/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/user/user.dart';
import '../../../domain/use_cases/fetch_suggested_friends.dart';

part 'suggest_friends_event.dart';
part 'suggest_friends_state.dart';
part 'suggest_friends_bloc.freezed.dart';

class SuggestFriendsBloc extends Bloc<SuggestFriendsEvent, SuggestFriendsState> {
  final FetchSuggestedFriends _fetchSuggestedFriendsCase;
  late final StreamSubscription _authSubscription;
  SuggestFriendsBloc({
    required FetchSuggestedFriends fetchSuggestedFriendsCase,
    required AuthBloc authBloc
  }) : _fetchSuggestedFriendsCase = fetchSuggestedFriendsCase,
        super(const SuggestFriendsState.initial()) {
    on<SuggestFriendsEvent>(_mapEventToState);
    _authSubscription = authBloc.stream.listen((state) {
      state.maybeMap(
          authenticated: (state){
            this.state.maybeMap(
                initial: (_) => add(const SuggestFriendsEvent.fetchFriendSuggestions()),
                orElse: (){});
          },
          orElse: (){});
    });
  }

  Future<void> _mapEventToState(SuggestFriendsEvent event, Emitter<SuggestFriendsState> emit)
   => event.map(fetchFriendSuggestions: (e) => _fetchFriendSuggestions(e,emit));

  Future<void> _fetchFriendSuggestions(_FetchFriendSuggestionsEvent event, Emitter<SuggestFriendsState> emit) async{
    final failureOrUsers = await _fetchSuggestedFriendsCase.execute(FetchSuggestedFriendsParams());
    failureOrUsers.fold((l){
      emit(const SuggestFriendsState.loaded(users: []));
    }, (r){
      emit(SuggestFriendsState.loaded(users: r));
    });
  }

  @override
  Future<void> close() {
    _authSubscription.cancel();
    return super.close();
  }
}
