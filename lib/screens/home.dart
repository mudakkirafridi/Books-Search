import 'package:books_search/controller/global_controller.dart';
import 'package:books_search/screens/detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    AppProvider appProvider = Provider.of<AppProvider>(context , listen: false);
    appProvider.fetchFlutterBookData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 65,
              ),
              Row(
                children: [
                  const Icon(Icons.menu),
                  const Spacer(),
                  const Icon(Icons.notifications_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: CircleAvatar(
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Hello , Mude,',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'What Do You Want To Read Today,',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Row(
                  children: [
                    const Icon(Icons.search),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'Search..', border: InputBorder.none),
                    )),
                    const Icon(Icons.mic_outlined),
                    const VerticalDivider(),
                    const Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flutter',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Romance'),
                  Text('Science'),
                  Text('Self-Love')
                ],
              ),
              appProvider.isLoading
                  ? _buildShimmer(context)
                  : SizedBox(
                      height: MediaQuery.of(context).size.height * .5,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: appProvider.flutterBook?.books?.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 180,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                       DetailScreen(image: appProvider.flutterBook?.books?[index].image,title: appProvider.flutterBook?.books?[index].title,)));
                                        },
                                        child: Image.network(
                                          appProvider.flutterBook?.books?[index]
                                                  .image ??
                                              'https://via.placeholder.com/150',
                                          height:
                                            MediaQuery.of(context).size.height *
                                                0.7 /
                                                2,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return const Icon(Icons.broken_image);
                                          },
                                        ),
                                      )),
                                  Text(
                                    appProvider.flutterBook?.books?[index].title
                                            .toString() ??
                                        'mes',
                                    style:const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Mudakir',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff9D9D9D)),
                                  ),
                                   Text(
                                     appProvider.flutterBook?.books?[index].price?? 'Unknown',
                                    style:const TextStyle(
                                        fontSize: 12, color: Color(0xff9D9D9D)),
                                  )
                                ],
                              ),
                            );
                          })),
              const Text(
                'Health',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              // flutter books listview
             appProvider.isLoading ? _buildShimmer(context) : SizedBox(
                  height: MediaQuery.of(context).size.height * .5,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 180,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                   DetailScreen(image: appProvider.healthBook?.books?[index].image,title: appProvider.healthBook?.books?[index].title,)));
                                    },
                                    child: Image.network(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.7 /
                                                2,
                                        appProvider.healthBook?.books?[index].image.toString()?? ''),
                                  )),
                               Text(
                                appProvider.healthBook?.books?[index].title ?? '',
                                style:const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                               Text(
                               appProvider.healthBook?.books?[index].subtitle ?? '',
                                style:const TextStyle(
                                    fontSize: 14, color: Color(0xff9D9D9D)),
                              ),
                               Text(
                                appProvider.healthBook?.books?[index].price?? 'Unknown',
                                style:const TextStyle(
                                    fontSize: 12, color: Color(0xff9D9D9D)),
                              )
                            ],
                          ),
                        );
                      })),
            ],
          ),
        ),
      ),
    );
  }
}

// https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg

Widget _buildShimmer(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: SizedBox(
          width: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7 / 2,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 16,
                width: 120,
                color: Colors.grey,
              ),
              const SizedBox(height: 8),
              Container(
                height: 14,
                width: 100,
                color: Colors.grey,
              ),
              const SizedBox(height: 8),
              Container(
                height: 12,
                width: 80,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(width: 10,),
      Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: SizedBox(
          width: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7 / 2,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 16,
                width: 120,
                color: Colors.grey,
              ),
              const SizedBox(height: 8),
              Container(
                height: 14,
                width: 100,
                color: Colors.grey,
              ),
              const SizedBox(height: 8),
              Container(
                height: 12,
                width: 80,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      )
        ],
      ),
    );
  }


  