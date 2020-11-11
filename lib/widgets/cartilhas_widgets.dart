import 'dart:ui';

import 'package:MPSP/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CartilhasIconContainer extends StatelessWidget {
  static const double boxSize = 70;

  CartilhasIconContainer(this.img, this.link);

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

class CartilhasIconTitle extends StatelessWidget {
  CartilhasIconTitle(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        "$title",
        style: TextStyle(fontFamily: "Montserrat", fontSize: 14),
        textAlign: TextAlign.center,
      ),
    ));
  }
}

class CartilhasPage extends StatelessWidget {
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
                CartilhasIconContainer('assets/img/cidadao_cartilhas/1.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Acessibilidade_nos_municipios.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/2.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/AreasDeRisco.pdf')
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Acessibilidade nos Municípios                                                                                  "),
                  CartilhasIconTitle(
                      "Áreas de Risco                                                                                             "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/3.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/atuacao-MP-conflitos-possessorios-coletivos.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/4.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/cartilha_atuacao_epidemia_dengue.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Atuação do Ministério Público em Conflitos Possessórios Coletivos"),
                  CartilhasIconTitle(
                      "Atuação do Ministério Público em Relação à Epidemia de Dengue"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/5.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/bullying.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/6.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Cartilha%20da%20Cidadania.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Bullying                                                                                                               "),
                  CartilhasIconTitle(
                      "Cartilha da Cidadania                                                                                                  "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/7.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Tolerancia_cartilha_Impressao.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/8.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/defesa_animal_2015_06_11_dg.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Cartilha da Tolerância                                                                                    "),
                  CartilhasIconTitle(
                      "Cartilha de Defesa Animal                                                                                   "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/9.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/EnfrentamentoDesaparecimento.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/10.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/cartilhaeleitoral.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Cartilha de Enfrentamento ao Desaparecimento                                                                               "),
                  CartilhasIconTitle(
                      "Cartilha Eleitoral - a regra é clara                                                                                    "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/11.png',
                    'http://www.cnmp.mp.br/portal_2015/images/Comissoes/CSP/CNMP_-_Cidadao_com_Seguranca_-_Final_WEB.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/12.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/coleta_seletiva.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Cidadão com Segurança                                                                               "),
                  CartilhasIconTitle(
                      "Coleta Seletiva - Pratique Esta Ideia                                                                   "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/13.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Cartilha%20Dengue.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/14.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/CarteisRevendaCombustiveis.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Combate à Dengue                                                                                                               "),
                  CartilhasIconTitle(
                      "Combustíveis - Combate a Cartéis                                                                                                  "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/15.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/defesa%20da%20concorr%C3%AAncia.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/16.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Direito_Diversidade.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Defesa da Concorrência                                                                                                  "),
                  CartilhasIconTitle(
                      "Direito e Diversidade                                                                                                       "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/17.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Elei%C3%A7%C3%B5es%202010-Cartilha%20da%20Propaganda%20Eleitoral%20na%20Internet.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/18.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/eleitoral.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Eleições 2010 - Propaganda Eleitoral na Internet                                                                   "),
                  CartilhasIconTitle(
                      "Eleições e Combate à Corrupção                                                                        "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/19.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/FUNDEB.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/20.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/gestao_ambiental.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "FUNDEB                                                                                                                                              "),
                  CartilhasIconTitle(
                      "Gestão Ambiental - Faça sua parte                                                                                                                    "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/21.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/GuiaOperacionalInfanciaMPSP.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/22.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/GuiaPraticoDeAcessibilidade.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Guia Operacional de Enfrentamento à Violência Sexual contra Crianças e Adolescentes"),
                  CartilhasIconTitle(
                      "Guia Prático de Acessibilidade                                                                                                        "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/23.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Guia%20Pratico%20de%20Direitos%20da%20Pessoa%20Idosa.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/24.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Guia%20Pratico%20de%20Direitos%20da%20Pessoa%20Idosa.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Guia Prático de Direitos da Pessoa Idosa                                                                   "),
                  CartilhasIconTitle(
                      "Habitação - Desenho Universal                                                                 "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/25.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/GuiaPratico%20Relacionamento%20Imprensa.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/26.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Cartilha%20-%20Institui%C3%A7%C3%B5es%20Privadas%20de%20Ensino%20Superior.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Imprensa - Guia Prático de Relacionamento                                                                                    "),
                  CartilhasIconTitle(
                      "Instituições Privadas de Ensino Superior                                                                                         "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/27.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/LIVRO_investiga%C3%A7%C3%B5es%20exitosas_MIOLO.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/28.png',
                    'http://www.cnmp.mp.br/portal/images/Publicacoes/documentos/CARTILHA_JOAO_CIDADAO_2016_WEB.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Investigações Exitosas Realizadas pelo Ministério Público Brasileiro"),
                  CartilhasIconTitle(
                      "João Cidadão - Um jeito simples de entender seus direitos"),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/29.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/justica-e-educacao_web.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/30.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/Lei%20Cidade%20Limpa.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Justiça e Educação em Heliópolis e Guarulhos parceria para a cidadania"),
                  CartilhasIconTitle(
                      "Lei Cidade Limpa                                                                                                            "),
                ],
              ),
            ),
            SizedBox(height: spaceTitleToIcon),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CartilhasIconContainer('assets/img/cidadao_cartilhas/31.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/manual_basico_saude_publica.pdf'),
                CartilhasIconContainer('assets/img/cidadao_cartilhas/32.png',
                    'http://www.mpsp.mp.br/portal/page/portal/Cartilhas/PVDESFcovid19capital.pdf'),
              ],
            ),
            SizedBox(height: spaceIconToTitle),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartilhasIconTitle(
                      "Manual Básico de Saúde Pública                                                                                        "),
                  CartilhasIconTitle(
                      "Mulheres em Situação de Violência no Contexto da Pandemia de Covid 19 - Capital"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
