import 'package:allxclusive/features/change_password/change_password/presentation/screens/change_password_screen.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/presentation/blocs/change_phone_bloc.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/presentation/screens/change_confirm_phone.dart';
import 'package:allxclusive/features/change_phone_number/change_phone_number/presentation/screens/change_confirm_sms.dart';
import 'package:allxclusive/features/events/presentation/blocs/event_details/event_details_bloc.dart';
import 'package:allxclusive/features/friend_events/friend_events/presentation/screens/friend_events_screen.dart';
import 'package:allxclusive/features/home/presentation/screens/filtering.dart';
import 'package:allxclusive/features/organiser_statistics/presentation/pages/organiser_statistics_screen.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/screens/wallet_not_created_screen.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/screens/wallet_resolve_screen.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/screens/wallet_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/event_details/event_details_bloc.dart' as ticket_purchase;
import 'package:allxclusive/features/events/presentation/screens/create_event_screen.dart';
import 'package:allxclusive/features/events/presentation/screens/create_ticket_screen.dart';
import 'package:allxclusive/features/events/presentation/screens/event_details_screen.dart' as organiser;
import 'package:allxclusive/features/events/presentation/screens/organiser_events_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/payment_cards/payment_cards_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/add_card_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/add_friends_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/event_details_screen.dart' as reveller;
import 'package:allxclusive/features/settings/screens/settings_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/event_friends_list_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/join_requests_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/profile_details_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/purchase_event_ticket_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/sucessfully_bought_ticket_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/team_select_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/terms_conditions_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/verify_ticket_screen.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/wait_for_host_screen.dart';
import 'package:allxclusive/core/widgets/confirm_phone.dart';
import 'package:allxclusive/core/widgets/confirm_sms.dart';
import 'package:allxclusive/features/verify_phone/presentation/screens/verify_confirm_phone.dart';
import 'package:allxclusive/main.dart';
import 'package:allxclusive/shared/domain/entities/event_detailed/event_detailed.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/forgot_password.dart';
import '../../features/auth/presentation/screens/forgot_password_sent.dart';
import '../../features/auth/presentation/screens/sign_in.dart';
import '../../features/auth/presentation/screens/sign_up.dart';
import '../../features/home/presentation/screens/home.dart';
import '../../features/profile_initialization/presentation/screens/create_profile_screen.dart';
import '../../features/profile_initialization/presentation/screens/edit_profile_screen.dart';
import '../../features/verify_phone/presentation/screens/verify_confirm_sms.dart';
import '../../shared/domain/entities/event/event.dart';

class RouteNames {
  static String signIn = '/sign_in';
  static String signUp = '/sign_up';
  static String home = '/home';
  static String forgotPassword = '/forgot_password';
  static String forgotPasswordSent = '/forgot_password_sent';
  static String createProfile = '/create_profile';
  static String settings = '/settings';
  static String editProfile = '/edit_profile';

  ///It's mandatory to provide [extra], which is Event entity
  static String createEvent = '/create_event';

  static String organiserEvents = '/organiser_events';

  ///It's mandatory to provide [extra], which is EventDetailed entity
  static String purchaseEventTicket = '/purchase_event_ticket';

  ///It's mandatory to provide [extra], which is Event entity
  static String organiserEventDetails = '/organiser_event_details';

  ///It's mandatory to provide [extra], which is Event entity
  static String eventDetails = '/event_details';

  ///It's mandatory to provide [extra], which is EventDetailsBloc entity
  static String createTicket = '/create_ticket';

  ///It's mandatory to provide [extra], which is String qr code
  static String verifyTicket = '/verify_ticket';

  static String joinRequests = '/join_requests';

  ///It's mandatory to provide [extra], which is String [userUid]
  static String profileDetails = '/profile_details';

  ///It's mandatory to provide [extra], which is [EventDetailsBloc]
  static String termsConditions = '/terms_conditions';

  ///It's mandatory to provide [extra], which is [EventDetailsBloc]
  static String chooseTeam = '/choose_team';

  static String joinRequestSent = '/join_request_sent';

  ///It's mandatory to provide [extra], which is [EventDetailsBloc]
  static String addFriend = '/add_friend';

  static String filtering = '/filtering';

  static String enterPhone = '/enter_phone';

  static String verifyPhone = '/verify_phone';

  static String changeEnterPhone = '/change_enter_phone';

  ///It's mandatory to provide [extra], which is [ChangePhoneBloc]
  static String changeVerifyPhone = '/change_verify_phone';

  ///It's mandatory to provide [extra], which is [List<User>] friends
  static String eventFriendsList = '/event_friends_list';

  static String successfullyBoughtTicket = '/successfully_bought_ticket';

  ///It's mandatory to provide [extra], which is [User] friend
  static String friendEvents = '/friend_events';

  static String changePassword = '/change_password';

  static String organiserWallet = '/organiser_wallet';

  static String walletNotCreated = '/wallet_not_created';

  static String walletResolve = '/wallet_resolve';

  ///It's mandatory to provide [extra], which is [PaymentCardsBloc]
  static String addCard = '/add_card';

  static String organiserStatistics = '/organiser_statistics';
}

final router = GoRouter(routes: [
  GoRoute(path: '/',
      builder: (context, state) {
        return const Splash();
      }),
  GoRoute(path: RouteNames.profileDetails,
      builder: (context, state) {
        return ProfileDetailsScreen(userUid: state.extra as String);
      }),
  GoRoute(path: RouteNames.addCard,
      builder: (context, state) {
        return BlocProvider.value(
          value: state.extra as PaymentCardsBloc,
          child: AddCardScreen(),
        );
      }),
  GoRoute(path: RouteNames.eventFriendsList,
      builder: (context, state) {
        return EventFriendsListScreen(friends: state.extra as List<User>);
      }),
  GoRoute(path: RouteNames.organiserStatistics,
      builder: (context, state) {
        return const OrganiserStatisticsScreen();
      }),
  GoRoute(path: RouteNames.changePassword,
      builder: (context, state) {
        return const ChangePasswordScreen();
      }),
  GoRoute(path: RouteNames.enterPhone,
      builder: (context, state) {
        return const VerifyConfirmPhone();
      }),
  GoRoute(path: RouteNames.changeEnterPhone,
      builder: (context, state) {
        return const ChangeConfirmPhone();
      }),
  GoRoute(path: RouteNames.walletNotCreated,
      builder: (context, state) {
        return const WalletNotCreatedScreen();
      }),
  GoRoute(path: RouteNames.successfullyBoughtTicket,
      builder: (context, state) {
        return const SuccessfullyBoughtTicketScreen();
      }),
  GoRoute(path: RouteNames.verifyPhone,
      builder: (context, state) {
        return const VerifyConfirmSms();
      }),
  GoRoute(path: RouteNames.walletResolve,
      builder: (context, state) {
        return const WalletResolveScreen();
      }),
  GoRoute(path: RouteNames.changeVerifyPhone,
      builder: (context, state) {
        return BlocProvider.value(
            value: state.extra as ChangePhoneBloc,
            child: const ChangeConfirmSms());
      }),
  GoRoute(path: RouteNames.termsConditions,
      builder: (context, state) {
        return BlocProvider.value(
            value: state.extra as ticket_purchase.EventDetailsBloc,
            child: const TermsConditionsScreen());
      }),
  GoRoute(path: RouteNames.chooseTeam,
      builder: (context, state) {
        return BlocProvider.value(
            value: state.extra as ticket_purchase.EventDetailsBloc,
            child: const TeamSelectScreen());
      }),
  GoRoute(path: RouteNames.addFriend,
      builder: (context, state) {
        return BlocProvider.value(
            value: state.extra as ticket_purchase.EventDetailsBloc,
            child: const AddFriendsScreen());
      }),
  GoRoute(path: RouteNames.filtering,
      builder: (context, state) {
        return const FilteringScreen();
      }),
  GoRoute(path: RouteNames.signIn,
      builder: (context, state) {
        return const SignIn();
      }),
  GoRoute(path: RouteNames.joinRequestSent,
      builder: (context, state) {
        return const WaitForHostScreen();
      }),
  GoRoute(path: RouteNames.joinRequests,
      builder: (context, state) {
        return const JoinRequestsScreen();
      }),
  GoRoute(path: RouteNames.verifyTicket,
      builder: (context, state) {
        return VerifyTicketScreen(qrCode: state.extra as String);
      }),
  GoRoute(path: RouteNames.purchaseEventTicket,
      builder: (context, state) {
        return PurchaseEventTicketScreen(
          eventDetailed: state.extra as EventDetailed,);
      }),
  GoRoute(path: RouteNames.organiserEventDetails,
      builder: (context, state) {
        return organiser.EventDetailsScreen(event: state.extra as Event);
      }),
  GoRoute(path: RouteNames.eventDetails,
      builder: (context, state) {
        return reveller.EventDetailsScreen(event: state.extra as Event);
      }),
  GoRoute(path: RouteNames.createEvent,
      builder: (context, state) {
        return CreateEventScreen(eventToUpdate: state.extra as Event?,);
      }),
  GoRoute(path: RouteNames.organiserEvents,
      builder: (context, state) {
        return const OrganiserEventsScreen();
      }),
  GoRoute(path: RouteNames.createTicket,
      builder: (context, state) {
        return BlocProvider.value(
            value: state.extra as EventDetailsBloc,
            child: const CreateTicketScreen());
      }),
  GoRoute(path: RouteNames.signUp,
      builder: (context, state) {
        return const SignUp();
      }),
  GoRoute(path: RouteNames.home,
      builder: (context, state) {
        return const Home();
      }),
  GoRoute(path: RouteNames.forgotPassword,
      builder: (context, state) {
        return const ForgotPassword();
      }),
  GoRoute(path: RouteNames.forgotPasswordSent,
      builder: (context, state) {
        return const ForgotPasswordSent();
      }),
  GoRoute(path: RouteNames.organiserWallet,
      builder: (context, state) {
        return const WalletScreen();
      }),
  GoRoute(path: RouteNames.createProfile,
      builder: (context, state) {
        return const CreateProfileScreen();
      }),
  GoRoute(path: RouteNames.settings,
      builder: (context, state) {
        return const SettingsScreen();
      }),
  GoRoute(path: RouteNames.friendEvents,
      builder: (context, state) {
        return FriendEventsScreen(friend: state.extra as User);
      }),
  GoRoute(path: RouteNames.editProfile,
      builder: (context, state) {
        return EditProfileScreen();
      }),

]);