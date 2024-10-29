import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workoo/home_screen.dart';
import 'package:workoo/my_tasker_screen.dart';
import 'package:workoo/profile_screen.dart';
import 'package:workoo/task_screen.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();
RxInt selectedPageIndex = 0.obs;

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return Scaffold(
        key: _key,
        backgroundColor: Colors.white,
        body: Stack(children: [
          Positioned.fill(
              child: Obx(() => IndexedStack(
                    index: selectedPageIndex.value,
                    children: const [
                      HomeScreen(),
                      TaskScreen(),
                      MyTaskerScreen(),
                      ProfileScreen()
                    ],
                  ))),
          BottomNavigation(
            textTheme: textTheme,
            changeScreen: (value) {
              selectedPageIndex.value = value;
              return selectedPageIndex.value;
            },
            // selectedPageIndex: selectedPageIndex.value,
          )
        ]));
  }
}

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    super.key,
    required this.textTheme,
    required this.changeScreen,
    // required this.selectedPageIndex,
  });

  final TextTheme textTheme;
  final Function(int) changeScreen;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // final int selectedPageIndex;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: size.height / 10,
        color: Colors.white,
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              selectedPageIndex.value == 0
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (() {
                              widget.changeScreen(0);
                            }),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color.fromRGBO(103, 80, 164, 0.15)),
                              elevation: WidgetStateProperty.all(0),
                            ),
                            child: const Icon(Icons.home,
                                size: 32, color: Colors.black)),
                        Text(
                          "Home",
                          style: widget.textTheme.bodyMedium,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              elevation: WidgetStateProperty.all(0),
                            ),
                            onPressed: (() => widget.changeScreen(0)),
                            child: const Icon(Icons.home_outlined,
                                size: 32,
                                color: Color.fromARGB(255, 98, 91, 113))),
                        Text(
                          "Home",
                          style: widget.textTheme.labelSmall,
                        )
                      ],
                    ),
              selectedPageIndex.value == 1
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (() {
                              widget.changeScreen(0);
                            }),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color.fromRGBO(103, 80, 164, 0.15)),
                              elevation: WidgetStateProperty.all(0),
                            ),
                            child: const Icon(Icons.inbox_rounded,
                                size: 32, color: Colors.black)),
                        Text(
                          "Task",
                          style: widget.textTheme.bodyMedium,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: (() {
                            widget.changeScreen(1);
                          }),
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStateProperty.all(Colors.white),
                            elevation: WidgetStateProperty.all(0),
                          ),
                          child: const Icon(
                            Icons.inbox_outlined,
                            size: 32,
                            color: Color.fromARGB(255, 98, 91, 113),
                          ),
                        ),
                        Text(
                          "Task",
                          style: widget.textTheme.labelSmall,
                        )
                      ],
                    ),
              selectedPageIndex.value == 2
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (() {
                              widget.changeScreen(0);
                            }),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color.fromRGBO(103, 80, 164, 0.15)),
                              elevation: WidgetStateProperty.all(0),
                            ),
                            child: const Icon(CupertinoIcons.heart_fill,
                                size: 32, color: Colors.black)),
                        Text(
                          "My Tasker",
                          style: widget.textTheme.bodyMedium,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              elevation: WidgetStateProperty.all(0),
                            ),
                            onPressed: (() => widget.changeScreen(2)),
                            child: const Icon(CupertinoIcons.heart,
                                size: 32,
                                color: Color.fromARGB(255, 98, 91, 113))),
                        Text(
                          "My Tasker",
                          style: widget.textTheme.labelSmall,
                        )
                      ],
                    ),
              selectedPageIndex.value == 3
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: (() {
                              widget.changeScreen(0);
                            }),
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color.fromRGBO(103, 80, 164, 0.15)),
                              elevation: WidgetStateProperty.all(0),
                            ),
                            child: const Icon(
                                CupertinoIcons.person_crop_circle_fill,
                                size: 32,
                                color: Colors.black)),
                        Text(
                          "Profile",
                          style: widget.textTheme.bodyMedium,
                        )
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(Colors.white),
                              elevation: WidgetStateProperty.all(0),
                            ),
                            onPressed: (() => widget.changeScreen(3)),
                            child: const Icon(CupertinoIcons.person_crop_circle,
                                size: 32,
                                color: Color.fromARGB(255, 98, 91, 113))),
                        Text(
                          "Profile",
                          style: widget.textTheme.labelSmall,
                        )
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
