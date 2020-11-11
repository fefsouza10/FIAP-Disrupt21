import 'dart:ui';

import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MPIconContainer extends StatelessWidget {
  static const double boxSize = 70;

  MPIconContainer(this.img, this.link);

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

class MPIconTitle extends StatelessWidget {
  MPIconTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Text(
      "$title",
      style: TextStyle(fontFamily: "Montserrat", fontSize: 14),
      textAlign: TextAlign.center,
    ));
  }
}

class MPPage extends StatelessWidget {
  static const double boxSize = 70;
  static const double spaceIconToTitle = 5;
  static const double spaceTitleToIcon = 10;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Container(
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                "O que é o Ministério Público?",
                style: TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Palette.vermelhompsp2,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 1.0,
                decoration: BoxDecoration(
                    color: Palette.azulmpsp,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        width: 270,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/img/cidadao_mp/mp.jpg'))),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "O Ministério Público é uma instituição pública autônoma, a quem a Constituição Federal atribuiu a incumbência de defender a ordem jurídica, o regime democrático e os interesses sociais e individuais indisponíveis. Isto é, o Ministério Público é o grande defensor dos interesses do conjunto da sociedade brasileira. Tem a obrigação, portanto, de defender o interesse público, conduzindo-se, sempre, com isenção, apartidarismo e profissionalismo.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Para tanto, todos os seus membros têm as mesmas garantias asseguradas aos integrantes do Poder Judiciário, embora não tenham qualquer vinculação com esse poder, nem com Poder Executivo nem com o Poder Legislativo.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Os integrantes do Ministério Público Estadual são os promotores de Justiça (que atuam no primeiro grau de jurisdição) e os procuradores de Justiça (que atuam no segundo grau de jurisdição, junto aos tribunais), auxiliados por servidores, assistentes jurídicos e estagiários, todos com ingresso na Instituição mediante concurso público.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "A chefia da Instituição cabe ao procurador-geral de Justiça, que é eleito pelos promotores e procuradores e nomeado pelo governador do Estado, a quem é apresentada a lista tríplice com os mais votados na eleição interna.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "O Ministério Público do Estado de São Paulo é o maior do País, com cerca de 1.900 membros, e conta com vários órgãos de Administração Superior: Subprocuradoria-Geral Institucional, Subprocuradoria-Geral de Gestão, Subprocuradoria-Geral Jurídica e Subprocuradoria-Geral de Relações Externas; Órgão Especial do Colégio de Procuradores de Justiça; Conselho Superior; Corregedoria-Geral e Ouvidoria.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Além da área criminal, o Ministério Público atua na defesa do patrimônio público e social, do meio ambiente, da habitação e urbanismo, da infância e juventude, dos idosos, das pessoas com deficiência, dos direitos humanos, da saúde pública, da educação, do consumidor e ainda em falências e fundações, entre outros.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "O MP-SP tem vários grupos de atuação especial como o GAECO (contra o crime organizado), GEDEC (contra os delitos econômicos), GECAP (contra os crimes ambientas, contra animais e de parcelamento irregular do solo), GECEP (controle externo da atividade judicial), GAESP (saúde pública), GEDUC (educação) e GAEMA (meio ambiente), além de núcleos como o de Violência Contra a Mulher, e de programas de atuação integrada (PAI) do Futebol, da Pirataria e da Cracolândia.",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "Montserrat"),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
