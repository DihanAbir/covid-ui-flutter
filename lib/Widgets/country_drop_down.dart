import 'package:flutter/material.dart';

class CountryDropDown extends StatelessWidget {
  final List<String> countries;
  final String country;
  final Function (String) onChanged ;

  const CountryDropDown ({
   @required this.countries,
   @required this.country,
   @required this.onChanged,

});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: country,
          items: countries.map((e) => DropdownMenuItem(
            child: Row(
              children: [
                Text(e, style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w800),)
              ],
            ),
            value: e,
          ))
          .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
