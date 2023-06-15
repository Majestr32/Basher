import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/features/auth/presentation/widgets/auth_dob_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/widgets/back_button.dart';
import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../blocs/home_data_bloc/home_data_bloc.dart';

class FilteringScreen extends StatefulWidget {
  const FilteringScreen({Key? key}) : super(key: key);

  @override
  State<FilteringScreen> createState() => _FilteringScreenState();
}

class _FilteringScreenState extends State<FilteringScreen> {
  late final TextEditingController _startDateController = TextEditingController(text: context.read<HomeDataBloc>().state.filterSettings?.minDate?.formattedTexted ?? '');
  late final TextEditingController _endDateController = TextEditingController(text: context.read<HomeDataBloc>().state.filterSettings?.maxDate?.formattedTexted ?? '');

  @override
  void dispose() {
    _startDateController.dispose();
    _endDateController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeDataBloc,HomeDataState>(
      builder: (context,state) => Scaffold(
        backgroundColor: KColors.bgColor,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackArrow(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 35,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Filters', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: KColors.textColor),),
                          const Spacer(),
                          GestureDetector(
                              onTap: (){
                                context.read<HomeDataBloc>().add(const HomeDataEvent.cleanFilters());
                                setState(() {
                                  _startDateController.clear();
                                  _endDateController.clear();
                                });
                              },
                              child: Container(
                                  color: KColors.transparent,
                                  child: Text('CLEAR ALL', style: TextStyle(fontSize: 16, color: KColors.mainAccent, decoration: TextDecoration.underline),))),
                        ],
                      ),
                      const SizedBox(height: 25,),
                      Text('Start date', style: TextStyle(fontSize: 14, color: KColors.lightGrey),),
                      const SizedBox(height: 13,),
                      AuthDatePicker(
                        controller: _startDateController,
                        icon: FontAwesomeIcons.calendarDays,
                          iconSize: 20,
                          initial: state.filterSettings?.minDate,
                          endDate: DateTime.now().add(const Duration(days: 365)),
                          hint: '', onDateSelected: (date){
                          context.read<HomeDataBloc>().add(HomeDataEvent.selectStartDate(minDate: date));
                        setState(() {
                          _startDateController.text = date.formattedTexted;
                        });
                      }),
                      const SizedBox(height: 16,),
                      Text('End date', style: TextStyle(fontSize: 14, color: KColors.lightGrey),),
                      const SizedBox(height: 13,),
                      AuthDatePicker(
                        controller: _endDateController,
                          initial: state.filterSettings?.maxDate,
                          endDate: DateTime.now().add(const Duration(days: 365)),
                          icon: FontAwesomeIcons.calendarDays,
                          iconSize: 20,
                          hint: '', onDateSelected: (date){
                        context.read<HomeDataBloc>().add(HomeDataEvent.selectEndDate(maxDate: date));
                            setState(() {
                              _endDateController.text = date.formattedTexted;
                            });
                      }),
                      const SizedBox(height: 16,),
                      Text('Categories', style: TextStyle(fontSize: 14, color: KColors.lightGrey),),
                      const SizedBox(height: 13,),
                      Wrap(
                        runSpacing: 10,
                        spacing: 15,
                        children: [
                          _categoryButton(active: state.filterSettings?.category == null, name: 'Any', onTap: (){
                            context.read<HomeDataBloc>().add(const HomeDataEvent.selectCategory(selectCategory: null));
                          }),
                          ...List.generate(EventMusics.values.length, (index) => _categoryButton(active: state.filterSettings?.category?.name == EventMusics.values[index].name, name: EventMusics.values[index].name, onTap: (){
                            context.read<HomeDataBloc>().add(HomeDataEvent.selectCategory(selectCategory: EventMusics.values[index].name));
                          }))]
                      ),
                      const SizedBox(height: 16,),
                      Text('Request', style: TextStyle(fontSize: 14, color: KColors.lightGrey),),
                      const SizedBox(height: 13,),
                      Wrap(
                          runSpacing: 10,
                          spacing: 15,
                          children: [
                            _categoryButton(active: state.filterSettings?.requestRequired == null, name: 'Any', onTap: (){
                              context.read<HomeDataBloc>().add(const HomeDataEvent.selectRequest(required: null));
                            }),
                            _categoryButton(active: state.filterSettings?.requestRequired == true, name: 'Required', onTap: (){
                              context.read<HomeDataBloc>().add(const HomeDataEvent.selectRequest(required: true));
                            }),
                            _categoryButton(active: state.filterSettings?.requestRequired == false, name: 'Absent', onTap: (){
                              context.read<HomeDataBloc>().add(const HomeDataEvent.selectRequest(required: false));
                            }),
                          ]
                      ),
                      Spacer(),
                      AppButton(text: 'Apply', onPressed: (){
                        context.read<HomeDataBloc>().add(HomeDataEvent.applyFilters());
                        Navigator.of(context).pop();
                      }),
                      SizedBox(height: 60,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _categoryButton({required bool active, required String name, required VoidCallback onTap}){
    return IntrinsicWidth(
      child: Container(
        height: 36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: active ? KColors.mainAccent.withOpacity(0.7) : KColors.lightGrey
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Center(child: Text(name, style: TextStyle(fontSize: 12, color: KColors.textColor, fontWeight: FontWeight.w500),)),
          ),
        ),
      ),
    );
  }
}
