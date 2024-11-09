import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final label;
  final Function() onTap;
  final bool isLoading;
  final bool enabled;
  const Button({
    super.key,
    required this.label,
    required this.onTap,
    this.enabled = true,
    this.isLoading = false,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(!widget.enabled) return;
        widget.onTap.call();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: widget.enabled ? Colors.blueAccent : Colors.grey,
        ),
        height: 50,
        child: widget.isLoading ? const Center(child: CircularProgressIndicator(),) : Center(child: Text("${widget.label}"),),

      ),
    );
  }
}
