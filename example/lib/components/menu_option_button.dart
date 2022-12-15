import 'package:flutter/material.dart';

class MenuOptionButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const MenuOptionButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFFE9E7EE),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(),
          ),
          child: Text(
            title,
            style: const TextStyle(
              inherit: false,
              color: Colors.black,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
