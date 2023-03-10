import 'package:flutter/material.dart';
import 'package:st_service_marketing/source/floating_dismissible_appbar.dart';

void main() {
  runApp(const STM());
}

class STM extends StatelessWidget {
  
  const STM({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const STMarketing(title: 'Flutter Demo Home Page'),
    );
  }
}

class STMarketing extends StatefulWidget {
  const STMarketing({super.key, required this.title});

  final String title;

  @override
  State<STMarketing> createState() => _STMarketingState();
}

class _STMarketingState extends State<STMarketing>
    with SingleTickerProviderStateMixin {
  final controller = PageController(
    initialPage: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          const FloatingAppBar(),
          PageView(
            scrollDirection: Axis.vertical,

            children: [
              SingleChildScrollView(
                child: Stack(
                  children: const [

                  ],
                ),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'You have pushed the button this many times:',
                        ),
                        Text(
                          widget.title,
                          style: Theme
                              .of(context)
                              .textTheme
                              .headlineMedium,
                        ),
                      ],
                    );
                  })
              ),
            ],
          ),
        ],
      ),
    );
  }
}

