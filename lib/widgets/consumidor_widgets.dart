import 'dart:ui';

import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConsumidorIconContainer extends StatelessWidget {
  static const double boxSize = 70;

  ConsumidorIconContainer(this.img, this.link);

  final String img;
  final String link;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch("$link"),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 0.5,
                blurRadius: 10,
                offset: Offset(0, 5),
              )
            ],
            image: DecorationImage(
              image: AssetImage('$img'),
            )),
        width: 107,
        height: boxSize,
      ),
    );
  }
}

class ConsumidorIconTitle extends StatelessWidget {
  ConsumidorIconTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        "$title",
        style: TextStyle(fontFamily: "Montserrat", fontSize: 14),
        textAlign: TextAlign.center,
      ),
    ));
  }
}

class ConsumidorPage extends StatelessWidget {
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: 100,
        child: Column(
          children: [
            Container(
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 60,
                right: 60,
              ),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                    color: Palette.azulmpsp,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Clique na área de interesse para ser redirecionado.",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/00-01-ConflitosAtivo34_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caoconsumidor/Es92EkeFvyFEpQRKJqAojv0BnYOFHPUv8rLo39vxqz27-Q?e=QKNcbP'),
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/00-02-ConsumidorAtivo35_cropped.png',
                    'https://consumidorvencedor.mp.br/')
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConsumidorIconTitle(
                      "Conflitos de Atribuição                                                       "),
                  ConsumidorIconTitle(
                      "Consumidor Vencedor                                                          "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/00-03-materialAtivo36_cropped.png',
                    'http://www.mpsp.mp.br/portal/page/portal/cao_consumidor/materialapoio'),
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/martelo_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caoconsumidor/Eox0JELnneNEtQRI4hiyFhkBPbWuAexW6pIxdiSTad_tdw?e=bQBC95'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConsumidorIconTitle(
                      "Material de Apoio                                                             "),
                  ConsumidorIconTitle(
                      "Recurso Repetitivo                                             Repercussão Geral                                                                                     IRDR"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConsumidorIconContainer(
                    'assets/img/area_consumidor/00-05- RoteirosAtivo38_cropped.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caoconsumidor/Eidh9fyulR9FiibhSh1Bl3YBYNFvgm3kVjE9iTdg69_noQ?e=Gx33tt'),
                ConsumidorIconContainer('assets/img/area_consumidor/acervo.png',
                    'http://www.mpsp.mp.br/portal/page/portal/cao_consumidor/acervo'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConsumidorIconTitle(
                      "Roteiros                                                                                                             "),
                  ConsumidorIconTitle(
                      "Acervo                                                                                        "),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
