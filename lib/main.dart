import 'dart:developer';
import 'dart:ui';

import 'package:allxclusive/bloc_observer.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/loading_overlay.dart';
import 'package:allxclusive/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:allxclusive/features/auth/domain/use_cases/delete_account.dart';
import 'package:allxclusive/features/auth/domain/use_cases/reset_password.dart';
import 'package:allxclusive/features/auth/domain/use_cases/sign_in_with_email_and_password.dart';
import 'package:allxclusive/features/auth/domain/use_cases/sign_in_with_google.dart';
import 'package:allxclusive/features/auth/domain/use_cases/sign_up_with_email_and_password.dart';
import 'package:allxclusive/features/auth/domain/use_cases/user_stream.dart';
import 'package:allxclusive/features/events/data/data_sources/remote/event_service_impl.dart';
import 'package:allxclusive/features/events/data/repositories/event_repository_impl.dart';
import 'package:allxclusive/features/events/domain/repositories/event_repository_contract.dart';
import 'package:allxclusive/features/events/domain/use_cases/create_event.dart';
import 'package:allxclusive/features/events/domain/use_cases/delete_event.dart';
import 'package:allxclusive/features/events/domain/use_cases/edit_event.dart';
import 'package:allxclusive/features/events/domain/use_cases/get_organiser_events.dart';
import 'package:allxclusive/features/events/domain/use_cases/publish_event.dart';
import 'package:allxclusive/features/events/presentation/blocs/user_events/user_events_bloc.dart';
import 'package:allxclusive/features/home/data/data_sources/remote/home_data_service_impl.dart';
import 'package:allxclusive/features/home/data/repositories/home_data_repository_impl.dart';
import 'package:allxclusive/features/home/domain/repositories/home_data_repository_contract.dart';
import 'package:allxclusive/features/home/domain/use_cases/get_filtered_events.dart';
import 'package:allxclusive/features/home/domain/use_cases/get_new_events.dart';
import 'package:allxclusive/features/home/domain/use_cases/get_this_week_events.dart';
import 'package:allxclusive/features/home/presentation/blocs/home_data_bloc/home_data_bloc.dart';
import 'package:allxclusive/features/map/data/data_sources/remote/map_events_service_contract.dart';
import 'package:allxclusive/features/map/data/data_sources/remote/map_events_service_impl.dart';
import 'package:allxclusive/features/map/data/repositories/map_event_repository_impl.dart';
import 'package:allxclusive/features/map/domain/repositories/map_event_repository_contract.dart';
import 'package:allxclusive/features/organiser_statistics/data/data_sources/remote/organiser_statistics_service_impl.dart';
import 'package:allxclusive/features/organiser_statistics/data/repositories/organiser_statistics_repository_impl.dart';
import 'package:allxclusive/features/organiser_statistics/domain/repositories/organiser_statistics_repository_contract.dart';
import 'package:allxclusive/features/organiser_statistics/domain/use_cases/get_statistics_report.dart';
import 'package:allxclusive/features/organiser_statistics/presentation/blocs/organiser_statistics/organiser_statistics_bloc.dart';
import 'package:allxclusive/features/organiser_wallet/data/data_sources/remote/organiser_wallet_service_impl.dart';
import 'package:allxclusive/features/organiser_wallet/data/repositories/organiser_wallet_repository_impl.dart';
import 'package:allxclusive/features/organiser_wallet/domain/repositories/organiser_wallet_repository_contract.dart';
import 'package:allxclusive/features/organiser_wallet/domain/use_cases/create_organiser_account.dart';
import 'package:allxclusive/features/organiser_wallet/domain/use_cases/get_account_balance.dart';
import 'package:allxclusive/features/organiser_wallet/domain/use_cases/get_account_link.dart';
import 'package:allxclusive/features/organiser_wallet/domain/use_cases/get_organiser_account.dart';
import 'package:allxclusive/features/organiser_wallet/domain/use_cases/get_payouts_list.dart';
import 'package:allxclusive/features/organiser_wallet/domain/use_cases/request_payout.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/blocs/organiser_wallet_bloc.dart';
import 'package:allxclusive/features/profile_initialization/data/data_sources/remote/user_service_impl.dart';
import 'package:allxclusive/features/profile_initialization/domain/use_cases/edit_user.dart';
import 'package:allxclusive/features/profile_initialization/domain/use_cases/get_user_by_id.dart';
import 'package:allxclusive/features/profile_initialization/domain/use_cases/save_user.dart';
import 'package:allxclusive/features/profile_initialization/domain/use_cases/set_user_mode.dart';
import 'package:allxclusive/features/ticket_purchase/data/data_sources/remote/friends_search_service_impl.dart';
import 'package:allxclusive/features/ticket_purchase/data/data_sources/remote/ticket_purchase_service_impl.dart';
import 'package:allxclusive/features/ticket_purchase/data/repositories/friends_search_repository_impl.dart';
import 'package:allxclusive/features/ticket_purchase/data/repositories/ticket_purchase_repository_impl.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/accept_join_requests.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/deny_join_requests.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/fetch_suggested_friends.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/get_join_requests.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/listen_join_requests_changed.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/join_requests/join_requests_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/suggest_friends/suggest_friends_bloc.dart';
import 'package:allxclusive/features/user_tickets/data/data_sources/remote/user_tickets_service_impl.dart';
import 'package:allxclusive/features/user_tickets/data/repositories/user_tickets_repository_impl.dart';
import 'package:allxclusive/features/user_tickets/domain/repositories/user_tickets_repository_contract.dart';
import 'package:allxclusive/features/user_tickets/domain/use_cases/listen_user_tickets.dart';
import 'package:allxclusive/features/user_tickets/presentation/blocs/user_tickets_bloc.dart';
import 'package:allxclusive/features/verify_phone/data/data_sources/remote/verify_phone_service_impl.dart';
import 'package:allxclusive/features/verify_phone/data/repositories/verify_phone_repository_impl.dart';
import 'package:allxclusive/features/verify_phone/domain/repositories/verify_phone_repository_contract.dart';
import 'package:allxclusive/features/verify_phone/domain/use_cases/is_phone_number_set.dart';
import 'package:allxclusive/features/verify_phone/domain/use_cases/verify_sms_code.dart';
import 'package:allxclusive/features/verify_phone/presentation/blocs/verify_phone_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:go_router/go_router.dart';
import 'package:oktoast/oktoast.dart';

import 'features/auth/domain/repositories/auth_repository_contract.dart';
import 'features/auth/domain/use_cases/sign_out.dart';
import 'features/auth/presentation/blocs/auth_bloc.dart';
import 'features/profile_initialization/data/repositories/user_repository_impl.dart';
import 'features/profile_initialization/domain/repositories/user_repository_contract.dart';
import 'features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'features/ticket_purchase/domain/repositories/friends_search_repository_contract.dart';
import 'features/user_tickets/domain/use_cases/get_user_tickets.dart';
import 'features/verify_phone/domain/use_cases/send_verification_phone_number_request.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = GlobalBlocObserver();
  await Firebase.initializeApp();
  FlutterError.onError = (det){
    FirebaseCrashlytics.instance.recordFlutterFatalError(det);
  };
  PlatformDispatcher.instance.onError = (error,stack){
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
  Stripe.publishableKey = "pk_test_51NHtxdLD11D2r30SfBRMVEFvizGQtJ6Zt5LMyCTFImKQYGOLZ9Bse6WXXmlbECvTGb8ohlKFG2L8Ivi29QOmABLi00u2gyQqha";
  Stripe.merchantIdentifier = 'merchant.com.allxclusive.allxclusive';
  await Stripe.instance.applySettings();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  late final AuthRepository _authRepository = AuthRepositoryImpl(auth: FirebaseAuth.instance, dio: _dio);
  late final AuthBloc _authBloc = AuthBloc(
    deleteAccountCase: DeleteAccount(authRepository: _authRepository),
    getUserStreamCase: GetUserStream(authRepository: _authRepository),
      resetPasswordCase: ResetPassword(authRepository: _authRepository),
      signInWithEmailAndPasswordCase: SignInWithEmailAndPassword(authRepository: _authRepository),
      signOutCase: SignOut(authRepository: _authRepository),
      signInWithGoogleCase: SignInWithGoogle(authRepository: _authRepository),
      signUpWithEmailAndPasswordCase: SignUpWithEmailAndPassword(authRepository: _authRepository)
  );
  final UserRepository _userRepository = UserRepositoryImpl(userService: UserServiceImpl(db: FirebaseFirestore.instance, storage: FirebaseStorage.instance));
  late final VerifyPhoneBloc _verifyPhoneBloc = VerifyPhoneBloc(
      profileInitializationBloc: _profileInitializationBloc,
      verifySmsCodeCase: VerifySmsCode(verifyPhoneRepository: _verifyPhoneRepository),
      isPhoneNumberSetCase: IsPhoneNumberSet(verifyPhoneRepository: _verifyPhoneRepository),
      sendVerificationPhoneNumberRequestCase: SendVerificationPhoneNumberRequest(verifyPhoneRepository: _verifyPhoneRepository));
  final VerifyPhoneRepository _verifyPhoneRepository = VerifyPhoneRepositoryImpl(verifyPhoneService: VerifyPhoneServiceImpl(db: FirebaseFirestore.instance, auth: FirebaseAuth.instance));
  late final _profileInitializationBloc = ProfileInitializationBloc(
      authBloc: _authBloc,
      setUserModeCase: SetUserMode(userRepository: _userRepository),
      getUserByIdCase: GetUserById(userRepository: _userRepository),
      editUserCase: EditUser(userRepository: _userRepository),
      saveUserCase: SaveUser(userRepository: _userRepository),);

  final Dio _dio = Dio();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => _authRepository),
        RepositoryProvider(create: (context) => _userRepository),
        RepositoryProvider(create: (context) => _verifyPhoneRepository),
        RepositoryProvider<EventRepository>(create: (context) => EventRepositoryImpl(eventService: EventServiceImpl(db: FirebaseFirestore.instance, storage: FirebaseStorage.instance))),
        RepositoryProvider<HomeDataRepository>(create: (context) => HomeDataRepositoryImpl(homeDataService: HomeDataServiceImpl(db: FirebaseFirestore.instance))),
        RepositoryProvider<TicketPurchaseRepository>(create: (context) => TicketPurchaseRepositoryImpl(ticketPurchaseService: TicketPurchaseServiceImpl(dio: _dio,db: FirebaseFirestore.instance))),
        RepositoryProvider<UserTicketsRepository>(create: (context) => UserTicketsRepositoryImpl(userTicketsService: UserTicketsServiceImpl(db: FirebaseFirestore.instance))),
        RepositoryProvider<MapEventRepository>(create: (context) => MapEventRepositoryImpl(mapEventsService: MapEventsServiceImpl(db: FirebaseFirestore.instance))),
        RepositoryProvider<FriendsSearchRepository>(create: (context) => FriendsSearchRepositoryImpl(friendsSearchService: FriendsSearchServiceImpl(db: FirebaseFirestore.instance))),
        RepositoryProvider<OrganiserWalletRepository>(create: (context) => OrganiserWalletRepositoryImpl(organiserWalletService: OrganiserWalletServiceImpl(db: FirebaseFirestore.instance, dio: _dio))),
        RepositoryProvider<OrganiserStatisticsRepository>(create: (context) => OrganiserStatisticsRepositoryImpl(organiserStatisticsService: OrganiserStatisticsServiceImpl(
            db: FirebaseFirestore.instance,
            dio: _dio)))
      ],
        child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => _authBloc, lazy: false,),
          BlocProvider(create: (context) => _profileInitializationBloc, lazy: false,),
          BlocProvider(create: (context) => _verifyPhoneBloc, lazy: false,),
          BlocProvider(create: (context) => OrganiserStatisticsBloc(getStatisticsReport: GetStatisticsReport(organiserStatisticsRepository: context.read<OrganiserStatisticsRepository>()))),
          BlocProvider(create: (context) => UserEventsBloc(
              deleteEventCase: DeleteEvent(eventRepository: context.read<EventRepository>()),
              createEventCase: CreateEvent(eventRepository: context.read<EventRepository>()),
              profileInitializationBloc: context.read<ProfileInitializationBloc>(),
              publishEventCase: PublishEvent(eventRepository: context.read<EventRepository>()),
              editEventCase: EditEvent(eventRepository: context.read<EventRepository>()),
              getOrganiserEventsCase: GetOrganiserEvents(eventRepository: context.read<EventRepository>())), lazy: false,),
          BlocProvider(create: (context) => HomeDataBloc(profileInitializationBloc: _profileInitializationBloc,
              getFilteredEventsCase: GetFilteredEvents(
                homeDataRepository: context.read<HomeDataRepository>()
              ),
              getThisWeekEventsCase: GetThisWeekEvents(
                homeDataRepository: context.read<HomeDataRepository>()
              ),
              getNewEventsCase: GetNewEvents(
            homeDataRepository: context.read<HomeDataRepository>()
          )), lazy: false,),
          BlocProvider(create: (context) => JoinRequestsBloc(profileInitializationBloc: _profileInitializationBloc,
              listenJoinRequestsChangedCase: ListenJoinRequestsChanged(
                ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
              ),
              acceptJoinRequestsCase: AcceptJoinRequests(ticketPurchaseRepository: context.read<TicketPurchaseRepository>()), getJoinRequestsCase: GetJoinRequests(ticketPurchaseRepository: context.read<TicketPurchaseRepository>()), denyJoinRequestsCase: DenyJoinRequests(ticketPurchaseRepository: context.read<TicketPurchaseRepository>())), lazy: false,),
          BlocProvider(create: (context) => UserTicketsBloc(
            listenUserTicketsCase: ListenUserTickets(
              userTicketRepository: context.read<UserTicketsRepository>()
            ),
              getUserTicketsCase: GetUserTickets(userTicketRepository: context.read<UserTicketsRepository>()), profileInitializationBloc: _profileInitializationBloc), lazy: false,),
          BlocProvider(create: (context) => SuggestFriendsBloc(
              authBloc: _authBloc,
              fetchSuggestedFriendsCase: FetchSuggestedFriends(friendsSearchRepository: context.read<FriendsSearchRepository>())), lazy: false,),
          BlocProvider(create: (context) => OrganiserWalletBloc(
              requestPayoutCase: RequestPayout(organiserWalletRepository: context.read<OrganiserWalletRepository>()),
              getAccountLinkCase: GetAccountLink(organiserWalletRepository: context.read<OrganiserWalletRepository>()),
              getAccountBalanceCase: GetAccountBalance(organiserWalletRepository: context.read<OrganiserWalletRepository>()),
              getOrganiserAccountCase: GetOrganiserAccount(organiserWalletRepository: context.read<OrganiserWalletRepository>()),
              createOrganiserAccountCase: CreateOrganiserAccount(organiserWalletRepository: context.read<OrganiserWalletRepository>()),
              getPayoutsListCase: GetPayoutsList(organiserWalletRepository: context.read<OrganiserWalletRepository>())),),
        ],
        child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc,AuthState>(
              bloc: _authBloc,
              listener: (context,state){
                state.maybeWhen(
                    authenticated: (user){
                      context.read<ProfileInitializationBloc>().add(ProfileInitializationEvent.fetchUserRegistration(uid: user.uid));
                    },
                    unauthenticated: (){
                      router.go(RouteNames.signIn);
                    },orElse: (){});
              },
              listenWhen: (oldState,newState){
                return oldState.maybeWhen(
                    error: (_){return false;},
                    orElse: (){return true;});
              },
            ),

            BlocListener<VerifyPhoneBloc, VerifyPhoneState>(
  listener: (context, state) {
    state.maybeMap(
        passed: (state){
          router.go(RouteNames.home);
          context.read<OrganiserWalletBloc>().add(OrganiserWalletEvent.fetchOrganiserWallet(userUid: context.read<AuthBloc>().state.user!.uid));
          context.read<OrganiserStatisticsBloc>().add(OrganiserStatisticsEvent.fetchStatistics(userUid: context.read<AuthBloc>().state.user!.uid));
        },
        needsPhoneVerification: (state){
          router.go(RouteNames.enterPhone);
        },
        orElse: (){});
  },
            ),
            BlocListener<ProfileInitializationBloc,ProfileInitializationState>(
              bloc: _profileInitializationBloc,
              listener: (context,state){
                state.maybeWhen(
                    needsRegistration: (_){
                      router.go(RouteNames.createProfile);
                    },orElse: (){});
              },
              listenWhen: (oldState,newState){
                if(oldState.isInitialized && newState.isInitialized){
                  return false;
                }
                return oldState.maybeWhen(
                    editedProfileSuccessfully: (_){
                      return false;
                    },
                    initialized: (_){
                      return false;
                    },
                    error: (_){return false;},
                    orElse: (){return true;});
              },
            ),
          ],
          child: MaterialApp.router(
            routerConfig: router,
            themeMode: ThemeMode.dark,
            title: 'Allxclusive',
            theme: ThemeData(
              fontFamily: 'Open Sans',
            ),
            locale: Locale('en'),
            localizationsDelegates: [
              CountryLocalizations.delegate
            ],

            builder: (context,widget){
              return ScrollConfiguration(
                  behavior: ScrollBehavior(androidOverscrollIndicator: AndroidOverscrollIndicator.stretch),
                  child: LoadingOverlay(child: OKToast(child: widget!)));
            },
          ),
        ),
      ),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
    );
  }
}


