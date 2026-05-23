import 'package:back/View/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,  required this.color,
    this.icon,

  });

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:color ,
      child: SizedBox(

        height: 50,
        width: double.infinity,

        child: TextButton(
          
          
          onPressed: onPressed,
          child: Row(
            children: [
              if(icon !=null) Icon(icon),
              SizedBox(width: 10,),
              CustomText(text: text),
            ],
          ),
        ),

      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:back/View/widgets/custom_text.dart';
//
// class CustomButton extends StatelessWidget {
//   const CustomButton({
//     super.key,
//     required this.onPressed,
//     required this.text,
//     this.isLoading = false,
//   });
//
//   final String text;
//   final VoidCallback? onPressed;
//   final bool isLoading;
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       child: TextButton(
//         onPressed: isLoading ? null : onPressed,
//         style: TextButton.styleFrom(
//           padding: const EdgeInsets.symmetric(vertical: 14),
//           backgroundColor: Colors.blue,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(8),
//           ),
//         ),
//         child: isLoading
//             ? const SizedBox(
//           height: 20,
//           width: 20,
//           child: CircularProgressIndicator(
//             strokeWidth: 2,
//             color: Colors.white,
//           ),
//         )
//             : CustomText(
//           text: text,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
