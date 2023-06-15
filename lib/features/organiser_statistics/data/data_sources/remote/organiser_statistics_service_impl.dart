import 'package:allxclusive/core/consts/api.dart';
import 'package:allxclusive/core/consts/firebase_collections.dart';
import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/organiser_statistics/data/data_sources/remote/organiser_statistics_service_contract.dart';
import 'package:allxclusive/features/organiser_statistics/domain/entities/statistics_report/statistics_report.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';

class OrganiserStatisticsServiceImpl implements OrganiserStatisticsService{
  final Dio _dio;
  final FirebaseFirestore _db;

  @override
  Future<StatisticsReport> getStatisticsReport({required String userUid}) async{
    try{
      final accountId = (await _db.collection(kUsersCollection).doc(userUid).collection(kUserStripeAccounts).get()).docs.first.get('id');
      final response = await _dio.get(ApiEndpoints.getWeeklyEarnings, queryParameters: {
        'connected_account': accountId
      });
      return StatisticsReport.fromJson(response.data);
    }catch(e){
      throw const Failure(message: 'Failed to get organiser statistics', code: 'failed-get-organiser-statistics');
    }
  }

  const OrganiserStatisticsServiceImpl({
    required Dio dio,
    required FirebaseFirestore db,
  })  : _dio = dio,
        _db = db;
}