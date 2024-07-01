import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/data/data.dart';
import 'package:sample/widgets/widget.dart';

class MyListNameBody extends StatelessWidget {
  const MyListNameBody({
    super.key,
    required this.person,
  });

  final Person person;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return MyListTile(
            image: person.image[index],
            text: person.names[index],
            onTap: () {
              context.push(
                  '/profile?image=${person.image[index]}&name=${person.names[index]}');
            },
          );
        },
        itemCount: person.names.length);
  }
}
