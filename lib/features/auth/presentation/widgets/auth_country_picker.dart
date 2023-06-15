import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/theme/gradients.dart';
import 'package:allxclusive/core/utills/countries.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CountryPicker extends StatelessWidget {
  final String? selectedCountry;
  final Function(String?) onChanged;
  const CountryPicker({required this.selectedCountry, required this.onChanged,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          canvasColor: KColors.bgColor,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: KColors.mainAccent
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            border: Border.all(
              color: KColors.darkGrey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(14)
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CountryCodePicker(
              searchStyle: TextStyle(color: KColors.textColor),
              textStyle: TextStyle(color: KColors.textColor),
              dialogBackgroundColor: KColors.bgColor,
              dialogTextStyle: TextStyle(color: KColors.textColor),
              boxDecoration: BoxDecoration(
                color: KColors.bgColor
              ),
              searchDecoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: KColors.textColor)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: KColors.textColor)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: KColors.mainAccent)
                ),
                iconColor: KColors.textColor,
                prefixIconColor: KColors.textColor,
              ),
              onChanged: (val){
                onChanged.call(val.toCountryStringOnly());
              },
              builder: (code){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: selectedCountry != null ? Row(
                    children: [
                      Image.asset(code!.flagUri!, package: 'country_code_picker', width: 20,),
                      SizedBox(width: 15,),
                      Text(code.localize(context).toCountryStringOnly(), style: TextStyle(color: KColors.textColor),),
                    ],
                  ) : Row(
                    children: [
                      Icon(FontAwesomeIcons.flag, size: 16, color: KColors.darkGrey,),
                      SizedBox(width: 15,),
                      Text('Select country', style: TextStyle(color: KColors.lightGrey),),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

/*
* DropdownButton(
                isExpanded: true,
                hint: Text('Select country', style: TextStyle(color: KColors.lightGrey, fontSize: 14),),
                value: selectedCountry,
                items: List.generate(
                    _countries.length, (index) => DropdownMenuItem(
                    value: _countries[index].name,
                    child: Row(
                      children: [
                        Text(_countries[index].emoji),
                        SizedBox(width: 5,),
                        Text(_countries[index].name, overflow: TextOverflow.fade, style: TextStyle(color: KColors.textColor),),
                      ],))), onChanged: onChanged),*/