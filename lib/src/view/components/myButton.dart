import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;

  const MyButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  State<MyButton> createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color.fromRGBO(70, 0, 255, 1),
            textStyle: const TextStyle(fontSize: 21.5),
            fixedSize: const Size(126, 45)
          ),
          onPressed: widget.onPressed,
          child: Text(widget.text)
      ),
    );
  }
}