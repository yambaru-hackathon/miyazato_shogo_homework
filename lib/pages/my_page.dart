import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final images = [
    'https://pbs.twimg.com/media/GExLVc_acAAqNxN?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExLQy7bAAAuWxD?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExK6M3a8AAv5-r?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKvvsbcAAZb6o?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExLOTWbMAAQnto?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExLK5kbwAA-Dxi?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExLCLpaUAAXiuC?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKqXJb0AETX33?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKlkjakAAiATb?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKhrSaQAEj9AY?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKch7awAARlGX?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKX4yaUAEqWQZ?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKSQWaoAAdMC2?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKPj2a4AAfKjn?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKNafbkAE1MZK?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKLdQbgAEkdUF?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKICebQAADYxN?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKEN2agAAneCE?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExKCTKbcAAZypX?format=jpg&name=large',
    'https://pbs.twimg.com/media/GExJ_EUbwAAXgeS?format=jpg&name=large',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('マイページ')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                    'https://pbs.twimg.com/profile_images/1746893256309518336/_JdxzImy_400x400.jpg',
                    width: 60,
                    height: 60,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        '7,041',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('投稿'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Text(
                        '4.6億',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロワー'),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Column(
                    children: [
                      Text(
                        '99',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text('フォロー中'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seyanaga',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '#YoursToMake',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    'help.instagram.com',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'フォロー中',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              'メッセージ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  OutlinedButton(
                    onPressed: () {},
                    child: Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: images.map((imageUrl) {
                return InstagramPostItem(imageUrl: imageUrl);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class InstagramPostItem extends StatelessWidget {
  const InstagramPostItem({Key? key, required this.imageUrl}) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
    );
  }
}
