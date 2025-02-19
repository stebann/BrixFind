import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchField extends StatelessWidget {
  final void Function()? onTapFilter;

  const CustomSearchField({super.key, required this.onTapFilter});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black54,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 238, 238, 238),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(Icons.search, size: 25, color: Colors.black54),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 30,
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 1,
              ),
            ),
            const SizedBox(width: 10),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTapFilter,
                borderRadius: BorderRadius.circular(50),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.sliders,
                    size: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
        contentPadding: EdgeInsets.all(16),
        isDense: true,
        hintStyle: TextStyle(fontSize: 16, color: Colors.black54),
        hintText: 'Search property...',
      ),
    );
  }
}
