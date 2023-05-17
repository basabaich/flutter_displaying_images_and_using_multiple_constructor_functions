//
//File: gradient_container.dart
//

import 'package:flutter/material.dart';
//import '../styled_text.dart';
//As we are not calling the "StyledText()" class any more and are not calling
//any of it's arguments, so we have commented out importing of this class
//here.

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //"const GradientContainer({super.key});"
  //Above constructor of this class is now commented out and below code line
  //for constructor is being used. Here the "List" colors are not used as a
  //named arguments, but as a positional arguments. As such the
  //modified lines below is the new changed constructor code line:
  //
  const GradientContainer(this.color1, this.color2, {super.key});
  //The above code is the 1st constructor of this class. But there can
  //be a second constructor function also as well.
  //
  //
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;
  //And this is the second constructor function of this class i.e.
  //"GradientContainer()" class.
//
//
  final Color color1;
  final Color color2;
//We are defining a color1 & color2 as variables for "Color" as type & these
//are all final variables, that means they will not change during running
//of this app.
//
  //
  //
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          //
          //Above the type variable of "Color" is kept within third brackets
          //viz. [ ].
          //Here we are not defining any specific colors, but are keeping them
          //flexible so that they can be provided with values by that class
          //which will call them to use.
          // This approach is different than the coding approach when we have
          //used the "Color" arguments as "named" arguments. So this is another
          //way to code & use flexible arguments.
          //
          //The below line of codes were the actual line of hard codes which
          //were commented out as we have defined positional arguments for
          //"Color".
          //
          // "[
          //  Color.fromARGB(255, 160, 90, 70),
          //  Color.fromARGB(255, 180, 175, 65),
          // ],"
          //
          //
          begin: startAlignment, end: endAlignment,
        ), //LinearGradient
      ), //BoxDecoration
      child: Center(
        child: Image.asset(
          'assets/images/dice-1.png',
          width: 160,
        ), //image.asset
      ), //Center
      //const StyledText('Hello World!'),
      //Whatever code we will put in the "StyledText" class / function,
      //will be treated as an "argument" for "StyledText" class. How this is
      //done ? to know this you need to see the "StyledText" class in that
      //file
      //
      //
    ); //Container
  }
}
