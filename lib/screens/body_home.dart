import 'package:flutter/material.dart';
import 'package:sample/data/data.dart';
import 'package:sample/widgets/widget.dart';

class MyHomeBody extends StatelessWidget {
  const MyHomeBody({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    // var person = Person();
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            // color: Colors.red,
            height: 150.0,
            child: ListView.builder(
              itemCount: person.image.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return MyCircleContainer(
                  image: person.image[index],
                );
              },
            ),
          ),
          ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return MyListTile(
                  image: person.image[index],
                  text: person.names[index],
                  onTap: () {
                    Navigator.pushNamed(context, '/second',
                        arguments: ScreenArgs(
                            person.names[index], person.image[index]));
                  },
                );
              },
              itemCount: person.names.length)
        ],
      ),
    );
  }
}
