import 'package:allxclusive/core/enums/currencies.dart';
import 'package:allxclusive/core/enums/tickets_types.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/features/auth/presentation/widgets/auth_textfield.dart';
import 'package:allxclusive/features/events/domain/repositories/event_repository_contract.dart';
import 'package:allxclusive/features/events/domain/use_cases/create_ticket.dart';
import 'package:allxclusive/features/events/presentation/blocs/add_ticket/add_ticket_bloc.dart';
import 'package:allxclusive/features/events/presentation/blocs/event_details/event_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_picker.dart';
import '../../../../core/widgets/back_button.dart';
import '../../../../shared/domain/entities/ticket/ticket.dart';

class CreateTicketScreen extends StatefulWidget {
  const CreateTicketScreen({Key? key}) : super(key: key);

  @override
  State<CreateTicketScreen> createState() => _CreateTicketScreenState();
}

class _CreateTicketScreenState extends State<CreateTicketScreen> {

  late final event = context.read<EventDetailsBloc>().state.eventDetails!.event;
  late final leftToDistribute = context.read<EventDetailsBloc>().state.eventDetails!.leftToDistribute;
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _fixedQuantityController = TextEditingController();
  String _selectedCurrency = Currencies.usd.currencySign;

  late final AddTicketBloc _addTicketBloc = AddTicketBloc(createTicketCase: CreateTicket(
    eventRepository: context.read<EventRepository>()
  ), eventDetailsBloc: context.read<EventDetailsBloc>());

  String? _descriptionError;
  String? _priceError;
  String? _fixedQuantityError;

  String? _ticketType = TicketsTypes.regular.name;


  @override
  void dispose() {
    _descriptionController.dispose();
    _priceController.dispose();
    _fixedQuantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddTicketBloc, AddTicketState>(
      bloc: _addTicketBloc,
  listener: (context, state) {
    state.maybeMap(
        addedTicket: (_){
          AppToast.instance.showSuccess(context, 'Ticket added successfully');
          Navigator.of(context).pop();
        },
        error: (e){
          AppToast.instance.showError(context, e.failure.message);
        },
        orElse: (){});
  },
  child: Scaffold(
      backgroundColor: KColors.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60,),
                  Text('Ticket type', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                  const SizedBox(height: 15,),
                  AppPicker(
                      selectedItem: _ticketType,
                      onChanged: (val){
                        setState(() {
                          _ticketType = val;
                        });
                      },
                      items: TicketsTypes.values.map((e) => e.name).toList(),
                      hint: 'Select'),
                  const SizedBox(height: 15,),
                  Text('Description', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                  const SizedBox(height: 10,),
                  AuthTextField(
                    error: _descriptionError,
                    controller: _descriptionController,
                    hint: '',
                    onChanged: (val){
                      setState(() {
                        _descriptionError = _validateDescription(val);
                      });
                    },
                    keyboard: TextInputType.text,
                    multiline: true,),
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Price', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                          const SizedBox(height: 10,),
                          AuthTextField(
                            error: _priceError,
                            controller: _priceController,
                            hint: '',
                            onChanged: (val){
                              setState(() {
                                _priceError = _validatePrice(val);
                              });
                            },
                            keyboard: const TextInputType.numberWithOptions(decimal: true, signed: true),
                            multiline: true,),
                        ],),
                      ),
                      SizedBox(width: 32,),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Currency', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                          const SizedBox(height: 10,),
                            AppPicker(
                                selectedItem: _selectedCurrency,
                                onChanged: (val){
                                  setState(() {
                                    _selectedCurrency = val!;
                                  });
                                },
                                items: Currencies.values.map((e) => e.currencySign).toList(),
                                hint: 'Select'),
                        ],),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Text('Fixed quantity', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                  const SizedBox(height: 10,),
                  AuthTextField(
                    error: _fixedQuantityError,
                    controller: _fixedQuantityController,
                    hint: '',
                    onChanged: (val){
                      setState((){
                        _fixedQuantityError = _validateQuantity(_fixedQuantityController.text);
                      });
                    },
                    keyboard: const TextInputType.numberWithOptions(decimal: false, signed: true),
                    multiline: true,),
                  const SizedBox(height: 10,),
                  _textLeftTicketsToSell(int.tryParse(_fixedQuantityController.text), leftToDistribute),
                  const SizedBox(height: 30,),
                  AppButton(text: 'Create',
                      loading: !context.read<EventDetailsBloc>().state.isLoaded,
                      onPressed: (){
                    _descriptionError = null;
                    _priceError = null;
                    _fixedQuantityError = null;

                    _descriptionError = _validateDescription(_descriptionController.text);


                    _fixedQuantityError = _validateQuantity(_fixedQuantityController.text);

                    _priceError = _validatePrice(_priceController.text);

                    setState(() {});
                    if([_descriptionError,_priceError,_fixedQuantityError].any((e) => e != null) ||  int.tryParse(_fixedQuantityController.text) == null || int.parse(_fixedQuantityController.text) > leftToDistribute){
                      return;
                    }

                    final ticket = Ticket(type: TicketsTypes.fromString(_ticketType!), currency: Currencies.fromCurrencySign(_selectedCurrency), description: _descriptionController.text, price: double.parse(_priceController.text), fixedQuantity: int.parse(_fixedQuantityController.text));
                    _addTicketBloc.add(AddTicketEvent.addTicket(ticket: ticket, eventUid: context.read<EventDetailsBloc>().state.eventDetails!.event.eventModel.uid!));
                  })
                ],
              ),
            ),
            const BackArrow()
          ],
        ),
      ),
    ),
);
  }

  String? _validateDescription(String description){
    String? error;
    if(description.isEmpty){
      error = 'Description can`t be empty';
    }
    return error;
  }

  String? _validatePrice(String price){
    String? error;
    if(price.isEmpty){
      error = 'Price can`t be empty';
    }else if(double.tryParse(price) == null || double.parse(price) <= 0){
      error = 'Price is not valid';
    }else if(double.parse(price) < 1){
      error = 'Minimum price is 1\$';
    }
    return error;
  }

  String? _validateQuantity(String quantity){
    String? error;
    if(quantity.isEmpty){
      error = 'Quantity cant`t be empty';
    }else if(int.tryParse(quantity) == null || int.parse(quantity) <= 0){
      error = 'Quantity is not valid';
    }
    return error;
  }

  Widget _textLeftTicketsToSell(int? selectedTickets, int maximumTickets){
    if(selectedTickets == null || selectedTickets < 1){
      return SizedBox.shrink();
    }
    final text;
    if(selectedTickets > maximumTickets){
      text = 'Entered tickets quantity is greater than the number of people planned for this event.';
    }else if(selectedTickets == maximumTickets){
      text = 'All tickets are distributed. You won`t be able to create more tickets for this event.';
    }else{
      text = 'There are ${maximumTickets - selectedTickets} left to distribute for this event';
    }
    return Text(text, style: TextStyle(color: selectedTickets > maximumTickets ? KColors.errorColor : KColors.textColor, fontSize: 12),);
  }
}
