import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                    'Novel',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Romance'),
                  Text('Science'),
                  Text('Self-Love')
                ],
              ),
              SizedBox(
                  height: 308,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.7 /
                                              2,
                                      'https://marketplace.canva.com/EAFaQMYuZbo/1/0/1003w/canva-brown-rusty-mystery-novel-book-cover-hG1QhA7BiBU.jpg')),
                              const Text(
                                'Someone Like You',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                'Mudakir',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff9D9D9D)),
                              ),
                              const Text(
                                'p198',
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff9D9D9D)),
                              )
                            ],
                          ),
                        );
                      })),
              const Text(
                'Flutter',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              // flutter books listview
              SizedBox(
                  height: 308,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.7 /
                                              2,
                                      'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1497579774i/35083833.jpg')),
                              const Text(
                                'Someone Like You',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                'Mudakir',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff9D9D9D)),
                              ),
                              const Text(
                                'p198',
                                style: TextStyle(
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
