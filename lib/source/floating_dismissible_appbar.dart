import 'package:flutter/material.dart';

class FloatingAppBar extends StatefulWidget {
  const FloatingAppBar({Key? key}) : super(key: key);

  @override
  State<FloatingAppBar> createState() => _FloatingAppBarState();
}

class _FloatingAppBarState extends State<FloatingAppBar>
    with SingleTickerProviderStateMixin {

  static List<Widget> myTabs = <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: toolBarTextButton('About'),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: toolBarTextButton('Our Team'),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: toolBarTextButton('Our Team'),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: toolBarTextButton('Our Team'),
    ),
  ];






  @override
  Widget build(BuildContext context) {
    return SliverAppBar(

      expandedHeight: 100,
      floating: true,
      actions: myTabs,
      backgroundColor: Colors.transparent,
      leading: SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width / 5,
        child: Row(
          children: const <Widget>[
          ],
        ),
      ),
    );
  }
}
Widget toolBarTextButton(String title) {
  return TextButton(
    onPressed: () {},
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
      ),
      foregroundColor: MaterialStateProperty.all(Colors.transparent),
      overlayColor: MaterialStateProperty.all(Colors.white24),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
      ),
    ),
    child: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
