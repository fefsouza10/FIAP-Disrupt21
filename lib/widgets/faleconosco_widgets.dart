import 'dart:ui';

import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FaleConoscoTile extends StatelessWidget {
  FaleConoscoTile(this.img, this.title, this.desc, this.link);

  final String img;
  final String title;
  final String desc;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: GestureDetector(
        onTap: () => launch(("$link")),
        child: Card(
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("$img"),
            ),
            title: Text(
              "$title",
              style: TextStyle(fontFamily: "Montserrat"),
            ),
            subtitle: Text(
              "$desc",
              style: TextStyle(fontFamily: "Montserrat"),
            ),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}

class FaleConoscoPage extends StatelessWidget {
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
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
            SizedBox(height: 10),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/1_cropped.png",
                "Áreas de Atuação do MP",
                "Conheça as áreas de atuação de Ministério Público e saiba como colaborar",
                "http://www.mpsp.mp.br/portal/page/portal/fale_conosco/areas-de-atuacao"),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/2_cropped.png",
                "Ouvidoria",
                "Reclamações, denúncias, críticas, apreciações, comentários, elogios, pedidos de informação e sugestões sobre as atividades desenvolvidas pelos órgãos do Ministério Público.",
                "http://www.mpsp.mp.br/portal/page/portal/Ouvidoria"),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/3_cropped.png",
                "Corregedoria",
                "Reclamações em relação à atuação funcional dos membros do MPSP",
                "http://www.mpsp.mp.br/portal/page/portal/corregedoria_geral"),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/4_cropped.png",
                "Endereços e Telefones do MP",
                "Encontre informações através da pesquisa por Regional",
                "http://www.mpsp.mp.br/portal/page/portal/corregedoria_geral"),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/5_cropped.png",
                "Núcleo de Comunicação Social - Imprensa",
                "Escreva para comunicacao@mpsp.mp.br",
                "http://www.mpsp.mp.br/portal/page/portal/comunicacao"),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/6_cropped.png",
                "Grupo de Atuação contra o Crime Organizado",
                "Conheça a atuação e como denunciar",
                "http://www.mpsp.mp.br/portal/page/portal/gaecos"),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/6_cropped.png",
                "Grupo de Combate à Lavagem de Dinheiro e à Formação de Cartel",
                "Conheça a atuação e como denunciar",
                "http://www.mpsp.mp.br/portal/page/portal/GEDEC"),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/6_cropped.png",
                "Grupo de Atuação Especial para o Controle Externo da Atividade Policial",
                "Conheça a atuação",
                "http://www.mpsp.mp.br/portal/page/portal/GECEP"),
            FaleConoscoTile(
                "assets/img/cidadao_falecon/6_cropped.png",
                "Grupo de Atuação Especial da Educação",
                "Conheça a atuação",
                "http://www.mpsp.mp.br/portal/page/portal/GEDUC"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
