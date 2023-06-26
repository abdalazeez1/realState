import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.text, required this.func,  this.isLoading =false });

  final String text;
  final VoidCallback func;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16)))),
              onPressed: func,
              child: isLoading ? CircularProgressIndicator(color: Theme.of(context).colorScheme.onPrimary,) : Text(text),
            ),
          ),
        ),
      ],
    );
  }
}
