import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/appbar.dart';
import '../modal/list_modal.dart';

class ListviewModal extends StatefulWidget {
  const ListviewModal({super.key});

  @override
  State<ListviewModal> createState() => _ListviewModalState();
}

class _ListviewModalState extends State<ListviewModal> {
  List<Items> items = [
    Items(
        title: 'Item1',
        description: 'description 1',
        imageurl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH7phcdXL0gMqOaFZekESehGYkHvjoZ0NDGg&s'),
    Items(
        title: 'Item 2',
        description: 'description 2',
        imageurl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuViN7efAwB5dbdgcONdw73Omzm1fDYqFK9g&s'),
    Items(
        title: 'Item 3',
        description: 'description 3',
        imageurl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCiIZU2_B-cwF3LgRbkk9p0oEe4BZg8l9fxw&s'),
    Items(
        title: 'Item 4',
        description: 'description 4',
        imageurl:
            'https://blogger.googleusercontent.com/img/a/AVvXsEhqzeTOTJm2J-wrSe9kAj3DlAphY5RzFw3W4xf25OPT1AEktfD1Z70sYBclrMDeuD6jAeZzJPByXgH272iG3hxS7AGppznCwS1yzioR77m4J03rVdFLmL3TtLjVmUfaCk-p1D3Jdkj6fp-9U64Tnqg1EMKT9OXpclfVjKrYeqT-OJWdnq9JBh_8ZZKWpsM=s1600-rw'),
    Items(
        title: 'Item 5',
        description: 'description 5',
        imageurl:
            'https://t3.ftcdn.net/jpg/05/73/55/12/360_F_573551225_h5mGL6pOLL5mDJi9pz7nYfG8uCppOfvW.jpg',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar('Modal List View'),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, i) => ListTile(
          leading: Image.network(items[i].imageurl),
          title: Text(items[i].title),
          subtitle: Text(items[i].description),
        ),
      ),
    );
  }
}
