import 'package:allxclusive/core/error/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../shared/domain/entities/user/user.dart';
import '../../../domain/use_cases/search_people.dart';

part 'friends_picker_event.dart';
part 'friends_picker_state.dart';
part 'friends_picker_bloc.freezed.dart';

class FriendsPickerBloc extends Bloc<FriendsPickerEvent, FriendsPickerState> {
  final SearchPeople _searchPeopleCase;
  FriendsPickerBloc({
    required SearchPeople searchPeopleCase
  }) :  _searchPeopleCase = searchPeopleCase,
        super(const FriendsPickerState.initial()) {
    on<FriendsPickerEvent>(_mapFriendsPickerToState, transformer: droppable());
  }

  Future<void> _mapFriendsPickerToState(FriendsPickerEvent event, Emitter<FriendsPickerState> emit)
    => event.map(searchFriend: (e) => _searchFriend(e,emit), addFriend: (e) => _addFriend(e,emit), removeFriend: (e) => _removeFriend(e,emit));

  Future<void> _searchFriend(_SearchFriendEvent event, Emitter<FriendsPickerState> emit) async{
    final failureOrPeople = await _searchPeopleCase.execute(SearchPeopleParams(searchQuery: event.searchQuery));
    failureOrPeople.fold((l){
      emit(FriendsPickerState.error(suggestedFriends: state.suggestedFriends, addedFriends: state.addedFriends, error: l));
      emit(FriendsPickerState.initialized(suggestedFriends: state.suggestedFriends, addedFriends: state.addedFriends));
    }, (r){
      emit(FriendsPickerState.initialized(suggestedFriends: r, addedFriends: state.addedFriends));
    });
  }

  Future<void> _addFriend(_AddFriendEvent event, Emitter<FriendsPickerState> emit) async{
    emit(FriendsPickerState.initialized(suggestedFriends: state.suggestedFriends, addedFriends: [...state.addedFriends, event.friend]));
  }

  Future<void> _removeFriend(_RemoveFriendEvent event, Emitter<FriendsPickerState> emit) async{
    emit(FriendsPickerState.initialized(suggestedFriends: state.suggestedFriends, addedFriends: state.addedFriends.where((element) => element.uid != event.friend.uid).toList()));
  }
}
