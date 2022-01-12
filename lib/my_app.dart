import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MyApp extends StatelessWidget {
  final String mask;

  const MyApp({
    Key key,
    this.mask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                inputFormatters: [
                  if (mask != null)
                    MaskTextInputFormatter(
                      mask: mask,
                    ),
                ],
                decoration: InputDecoration(
                  labelText: 'Escreva seu nome',
                  hintText: 'Escreva seu nome',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
