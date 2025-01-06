import 'package:books_search/widgets/my_button.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  String? image;
  String? title;
   DetailScreen({super.key , required this.image , required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 65,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                     image ?? '',
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   Text(
                    title ?? '',
                    style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Mudakir Afridi',
                    style: TextStyle(fontSize: 14, color: Color(0xff9D9D9D)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Text('4.2')
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About The Author',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text(
                    'Lorem Ipsum is a piece of text, used by designers to fill a space where the content will eventually sit. It helps show how text will look once a piece of content is finished, during the planning phase.',
                    style: TextStyle(color: Color(0xff9D9D9D)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Overview',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text(
                    'Lorem Ipsum is a piece of text, used by designers to fill a space where the content will eventually sit. It helps show how text will look once a piece of content is finished, during the planning phase.',
                    style: TextStyle(color: Color(0xff9D9D9D)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(16.0),
        child: MyButton(
          title: 'Add To Cart',
          textColor: Colors.white,
        ),
      ),
    );
  }
}
