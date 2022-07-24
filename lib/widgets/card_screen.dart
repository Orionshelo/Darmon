import 'package:app_3/theme/app_theme.dart';
import 'package:app_3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.primary,
        title: const Text('Noticias del mundo del deporte'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            //CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              imageUrl: 'https://i.ytimg.com/vi/4uGXIb6kANg/maxresdefault.jpg',
              name: 'La carrera de Max Verstappen: ¿Cómo llegó a la F1?',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://s3.amazonaws.com/rtvc-assets-qa-sistemasenalcolombia.gov.co/noticias/emisora-radio-nacional_1.jpg',
              name: 'Fabiana Arias, la patinadora más veloz de Colombia',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://e00-co-marca.uecdn.es/claro/assets/multimedia/imagenes/2022/07/22/16585078895731.jpg',
              name:
                  'Tour de Francia 2022: Nairo Quintana ya piensa en la crono',
            ),
            SizedBox(height: 20),
            CustomCardType2(
              imageUrl:
                  'https://caracoltv.brightspotcdn.com/dims4/default/17837b1/2147483647/strip/true/crop/1280x720+0+0/resize/1200x675!/quality/90/?url=http%3A%2F%2Fcaracol-brightspot.s3.amazonaws.com%2F6a%2F49%2Feef7a59a4153b0b69b2acc5f4332%2Fwhatsapp-image-2022-07-22-at-12.05.51%20AM.jpeg',
              name:
                  'La Selección Colombia femenina ya llegó a Bucaramanga: a poner a Argentina en la mira',
            ),
          ]),
    );
  }
}
