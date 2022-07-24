import 'package:app_3/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({Key? key, required this.imageUrl, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 30,
        shadowColor: AppTheme.primary.withOpacity(0.5),
        child: Column(children: [
          FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder: AssetImage('assets/loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: Duration(milliseconds: 300)),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name ?? 'No title'))
        ]));
  }
}
