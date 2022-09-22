import 'package:flutter/material.dart';



class Box extends StatelessWidget {
  final child ;
  const Box({super.key,required this.child});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
          child: Center(child: child,),
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 15,
                  offset: const Offset(5, 5),
                ),
                const BoxShadow(
                  color: Colors.white,
                  blurRadius: 15,
                  offset: Offset(-5, -5),
                )
              ]),
        );
  }
}