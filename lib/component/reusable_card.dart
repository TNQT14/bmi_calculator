import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress;
  const ReusableCard({super.key,
  required this.color,
  this.cardChild,
  this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress, 
      child: Container(
        
      ),
    );
  }
}