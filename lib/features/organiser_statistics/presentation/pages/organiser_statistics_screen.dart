import 'package:allxclusive/core/refreshables/refreshables.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/loading_overlay.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/features/organiser_statistics/domain/entities/graph_statistics_record/graph_statistics_record.dart';
import 'package:allxclusive/features/organiser_statistics/domain/entities/statistics_report/statistics_report.dart';
import 'package:allxclusive/features/organiser_statistics/presentation/blocs/organiser_statistics/organiser_statistics_bloc.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/blocs/organiser_wallet_bloc.dart';
import 'package:currency_symbols/currency_symbols.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class OrganiserStatisticsScreen extends StatelessWidget {
  const OrganiserStatisticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
      body: RefreshIndicator(
        onRefresh: () async{
          refreshStatistics(context);
        },
        child: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SafeArea(
              child: Stack(
                children: [
                  BlocBuilder<OrganiserStatisticsBloc,OrganiserStatisticsState>(
                    builder: (context,state) => state.report == null ? Center(child: LoadingIndicatorWidget(),) : Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        SizedBox(height: 70,),
                        Text('Statistics', style: TextStyle(fontSize: 24, color: KColors.textColor, fontWeight: FontWeight.w600),),
                        SizedBox(height: 30,),
                        Text('Weekly graph', style: TextStyle(fontSize: 16, color: KColors.textColor, fontWeight: FontWeight.w600),),
                          SizedBox(height: 20,),
                          SfCartesianChart(
                              primaryXAxis: CategoryAxis(
                                axisLine: AxisLine(color: KColors.lightGrey),
                                majorTickLines: MajorTickLines(color: KColors.lightGrey),
                                majorGridLines: MajorGridLines(width: 0),
                              ),
                              primaryYAxis: NumericAxis(
                                axisLine: AxisLine(color: KColors.lightGrey),
                                majorTickLines: MajorTickLines(color: KColors.lightGrey),
                                majorGridLines: MajorGridLines(width: 0),
                              ),
                              plotAreaBorderWidth: 0,
                              series: <ColumnSeries<GraphStatisticsRecord, String>>[
                                ColumnSeries<GraphStatisticsRecord, String>(
                                    color: KColors.mainAccent,
                                    dataSource: context.watch<OrganiserStatisticsBloc>().state.report!.weeklyEarnings,
                                    xValueMapper: (GraphStatisticsRecord record, _) => record.shortDate,
                                    yValueMapper: (GraphStatisticsRecord record, _) => record.amount,
                                )
                              ]
                          ),
                        SizedBox(height: 30,),
                        Row(
                          children: [
                            Text('Total earned:', style: TextStyle(fontSize: 16, color: KColors.lightGrey, fontWeight: FontWeight.w600),),
                            Spacer(),
                            Text(context.watch<OrganiserStatisticsBloc>().state.report!.totalAmount.toStringAsFixed(2) + cSymbol(context.watch<OrganiserWalletBloc>().state.accountBalance!.defaultAvailableBalance.currency.toUpperCase()), style: TextStyle(fontSize: 16, color: KColors.textColor,),)
                          ],
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: [
                            Text('Total tickets sold:', style: TextStyle(fontSize: 16, color: KColors.lightGrey, fontWeight: FontWeight.w600),),
                            Spacer(),
                            Text(context.watch<OrganiserStatisticsBloc>().state.report!.chargesCount.toString(), style: TextStyle(fontSize: 16, color: KColors.textColor,),)
                          ],
                        ),
                      ],),
                    ),
                  ),
                  BackArrow()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
