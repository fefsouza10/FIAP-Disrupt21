import 'dart:ui';

import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CivelIconContainer extends StatelessWidget {
  static const double boxSize = 70;

  CivelIconContainer(this.img, this.link);

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
        width: boxSize,
        height: boxSize,
      ),
    );
  }
}

class CivelIconTitle extends StatelessWidget {
  CivelIconTitle(this.title);
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

class CivelPage extends StatelessWidget {
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
                CivelIconContainer("assets/img/area_civel/atos.png",
                    "https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eoyzwst8bdVCnQElp_DrXPUBV6ZX1mgVkdnjhpfq3Xa4xw?e=QS6MaB"),
                CivelIconContainer('assets/img/area_civel/destaques.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eh5GSqxq4oJIgqVCbBUThC0BSegNiOFzR2_AKqukvvbt4g?e=7GZ1ja')
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CivelIconTitle(
                      "Atos de Racionalização                                                                  "),
                  CivelIconTitle(
                      "Destaques                                                                                                "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CivelIconContainer('assets/img/area_civel/falencias.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eony4SkBR_BBpd5dpGj1Y_gBL_B4hXpJy4zcn7-O6JstWg?e=GSc4cy'),
                CivelIconContainer('assets/img/area_civel/familia.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/Eu-S_WjOk7hIoFfE9dwQ4ysBUqnewaqRuHQNLvSK8Xy9AA?e=vOgxwn'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CivelIconTitle(
                      "Falências                                                                                                      "),
                  CivelIconTitle(
                      "Família                                                                                                 "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CivelIconContainer('assets/img/area_civel/fundacoes.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EsWz3udkDPRJu12TcO2PeG0BE6-_RK32VO1-GM8BQIle7Q?e=2sIPWc'),
                CivelIconContainer('assets/img/area_civel/mandados.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EgFnAUiu4mlJjhjReWy6X78Bd6tv7UqqgSyYhyGHYLSENA?e=qqhcv3'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CivelIconTitle(
                      "Fundações                                                                                  "),
                  CivelIconTitle(
                      "Mandados de Segurança                                                "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CivelIconContainer('assets/img/area_civel/processocivil.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EtZfXKNngM1Hu2n4WUSBE88Ba24SgVb6Rz3K_nKtwS1yTw?e=8FDaGW'),
                CivelIconContainer(
                    'assets/img/area_civel/registrospublicos.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EoaU-tbGuaREpWZ82XxIB1IB0dws-vO0ziOBmi7xby8ooQ?e=H20yOE'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CivelIconTitle(
                      "Processo Civil                                                                                "),
                  CivelIconTitle(
                      "Registros Públicos                                                                                     "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CivelIconContainer('assets/img/area_civel/roteiros.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EveT_cf0gDJEpmmDZHlxq0oBib9BvWpfM4VrdVKM9Z_gEw?e=l0X2SF'),
                CivelIconContainer('assets/img/area_civel/acordos.png',
                    'https://mpspbr.sharepoint.com/:f:/s/g_caocivel/EpZmUCV_zt9ItZrjSLjBVZcB3jtbNmcHb5qAPNvhqn2MMw?e=fz2EEW'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CivelIconTitle(
                      "Roteiros                                                                                            "),
                  CivelIconTitle(
                      "Termos de Cooperação                                                                     "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CivelIconContainer('assets/img/area_civel/dna.png',
                    'https://nam02.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmpspbr.sharepoint.com%2Fsites%2Fg_examedna&data=02%7C01%7CAnaAdorno%40mpsp.mp.br%7Cafa23a4a709d44fac35808d73e006bc7%7C2dbd8499508d4b76a31dca39cb3d8f1d%7C0%7C0%7C637046043850379624&sdata=WXB2LpYWhQdXI2D4NIIBcP869%2BvNMB79OdJoLuLUcJA%3D&reserved=0'),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  width: boxSize,
                  height: boxSize,
                ),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CivelIconTitle(
                      "Agendamento de Exames de DNA                                                                   "),
                  Flexible(
                      child: Text(
                    "",
                    textAlign: TextAlign.center,
                  )),
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
