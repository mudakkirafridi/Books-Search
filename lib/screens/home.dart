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
                  fontSize: 22, color: Colors.red, fontWeight: FontWeight.bold),
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
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Novel'),
                Text('Romance'),
                Text('Science'),
                Text('Self-Love')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
