import 'package:allxclusive/features/organiser_statistics/domain/entities/statistics_report/statistics_report.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/use_cases/get_statistics_report.dart';

part 'organiser_statistics_event.dart';
part 'organiser_statistics_state.dart';
part 'organiser_statistics_bloc.freezed.dart';

class OrganiserStatisticsBloc extends Bloc<OrganiserStatisticsEvent, OrganiserStatisticsState> {
  final GetStatisticsReport _getStatisticsReportCase;
  OrganiserStatisticsBloc({required GetStatisticsReport getStatisticsReport}) :
        _getStatisticsReportCase = getStatisticsReport,
        super(const OrganiserStatisticsState.initial()) {
    on<OrganiserStatisticsEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(OrganiserStatisticsEvent event, Emitter<OrganiserStatisticsState> emit) =>
    event.map(fetchStatistics: (e) => _fetchStatistics(e, emit));

  Future<void> _fetchStatistics(_FetchStatisticsEvent event, Emitter<OrganiserStatisticsState> emit) async{
    emit(OrganiserStatisticsState.initial());
    final failureOrReport = await _getStatisticsReportCase.execute(GetStatisticsReportParams(userUid: event.userUid));
    failureOrReport.fold((_){}, (r){
      emit(OrganiserStatisticsState.loaded(report: r));
    });
  }
}
