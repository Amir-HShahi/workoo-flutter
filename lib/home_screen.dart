import 'package:flutter/material.dart';

import 'package:workoo/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activePage = 1;
  void notificationHandler() {}

  void searchBarHandler() {}

  void viewAllButtonHandler() {}

  void featureServicesHandler() {}

  void featureServicesRecommendedListHandler() {}

  void featureServicesListHandler() {}

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Color.fromARGB(255, 98, 91, 113),
                          size: 26,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "San Francisco, CA",
                          style: textTheme.headlineMedium,
                        )
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(103, 80, 164, 0.1),
                          borderRadius:
                              BorderRadius.all(Radius.circular(1000))),
                      child: IconButton(
                          onPressed: notificationHandler,
                          icon: const Icon(
                            Icons.notifications_none_outlined,
                            size: 32,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            searchBar(textTheme, size),
            posterSlider(textTheme, size),
            featureServicesHeader(
                textTheme, size, "Feature Services", "View All"),
            const SizedBox(
              height: 16,
            ),
            featureServicesList(textTheme, size),
            featureServicesHeader(
                textTheme, size, "Recommended for you", "1/5"),
            featureServicesRecommendedList(textTheme, size),
            const SizedBox(
              height: 16,
            ),
            featureServicesHeader(
                textTheme, size, "Feature Services", "View All"),
            featureServices(textTheme, size),
            const SizedBox(
              height: 86,
            )
          ],
        ),
      ),
    );
  }

  Widget searchBar(TextTheme textTheme, Size size) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: SizedBox(
        height: 80,
        child: TextField(
          textDirection: TextDirection.ltr,
          decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                borderSide: BorderSide(width: 0, style: BorderStyle.none),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(11),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
              ),
              filled: true,
              fillColor: const Color.fromRGBO(103, 80, 164, 0.1),
              hintText: "Search the services you need",
              hintStyle: textTheme.bodyMedium,
              prefixIcon: IconButton(
                onPressed: searchBarHandler,
                icon: const Icon(Icons.search),
                iconSize: 32,
              )),
        ),
      ),
    );
  }

  Widget posterSlider(TextTheme textTheme, Size size) {
    final List images = [
      Assets.images.poster.path,
      Assets.images.poster.path,
      Assets.images.poster.path
    ];
    return Column(
      children: [
        SizedBox(
          width: size.width,
          height: size.height / 4,
          child: PageView.builder(
            itemCount: images.length,
            onPageChanged: (page) {
              setState(() {
                activePage = page;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(images[index]), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.all(Radius.circular(11)),
                  ),
                  // child: Image.asset(images[index],fit: BoxFit.cover,),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: indicators(images.length, activePage),
        )
      ],
    );
  }

  Widget featureServicesHeader(
      TextTheme textTheme, Size size, String leftText, String rightText) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: size.height / 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(leftText, style: textTheme.bodyLarge),
            InkWell(
              onTap: viewAllButtonHandler,
              child: Text(
                rightText,
                style: textTheme.bodySmall,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget featureServicesList(TextTheme textTheme, Size size) {
    return SizedBox(
      height: size.height / 8,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: featureServicesListHandler,
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: index == 4 ? 16 : 0),
              child: Container(
                width: size.width / 3.9,
                height: size.height / 6,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(103, 80, 164, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(11))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.icons.cleaningIcon.path,
                      scale: 0.8,
                      color: const Color.fromARGB(255, 33, 0, 93),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Cleaning",
                      style: textTheme.displayMedium,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget featureServicesRecommendedList(TextTheme textTheme, Size size) {
    return SizedBox(
        height: size.height / 2.8,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: size.width / 1.56,
                height: size.height / 3.14,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(103, 80, 164, 0.1),
                    borderRadius: BorderRadius.all(Radius.circular(11))),
                child: GestureDetector(
                  onTap: featureServicesRecommendedListHandler,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: size.width / 1.44,
                            height: size.height / 5.33,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(11)),
                                image: DecorationImage(
                                    image:
                                        AssetImage(Assets.images.poster.path),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "John Smith",
                                style: textTheme.titleLarge,
                              ),
                              Text("\$18/hr", style: textTheme.titleLarge)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 20,
                                color: Color.fromARGB(255, 255, 149, 41),
                              ),
                              Text(
                                "4.5(4 reviews)",
                                style: textTheme.displaySmall,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.check_circle_outline,
                                size: 20,
                                color: Color.fromARGB(255, 103, 80, 164),
                              ),
                              Text("5 waiting in line jobs",
                                  style: textTheme.displaySmall)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }

  Widget featureServices(TextTheme textTheme, Size size) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      child: SizedBox(
        width: double.infinity,
        height: size.height / 3.63,
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 8,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 55,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(11)),
                  border: Border.all(
                      width: 2, color: const Color.fromRGBO(73, 69, 79, 0.6)),
                ),
                // width: size.width / 2,
                // height: 40,
                child: InkWell(
                  onTap: featureServicesHandler,
                  child: Center(
                      child: Text(
                    "Washing Machine",
                    style: textTheme.labelSmall,
                  )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currectIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currectIndex == index
                ? const Color.fromARGB(255, 103, 80, 164)
                : const Color.fromRGBO(103, 80, 164, 0.2),
            shape: BoxShape.circle),
      );
    });
  }
}
