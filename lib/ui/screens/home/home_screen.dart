import 'package:covid/constants/detail_content.dart';
import 'package:covid/ui/gallery/gallery_view.dart';
import 'package:covid/ui/screens/attachments/attachment_contents.dart';
import 'package:covid/ui/screens/detail/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DetailView(
                            appBarTitle: 'Elaborado por',
                            isAbout: true,
                          )))
            },
          )
        ],
      ),
      body: _homeScreenBody(context),
    );
  }
}

Widget _homeScreenBody(BuildContext context) {
  List<String> regras_basicas = ['assets/basicas_1.PNG','assets/basicas_2.PNG'];
  List<String> medidas = ['assets/medida1.PNG','assets/medida2.PNG','assets/medidas3.PNG','assets/medidas4.PNG','assets/medidas5.PNG','assets/medidas6.PNG','assets/medidas7.PNG','assets/medidas8.PNG','assets/medidas9.PNG','assets/medidas10.PNG'];
  return SingleChildScrollView(
      child: Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 2,
              child: Image.asset('assets/GNR.jpeg')),
          Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 2,
              child: Image.asset('assets/corona.jpeg')),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          "assets/sintomas.png",
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 62,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Sintomas do covid-19',textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView(
                            appBarTitle: 'Sintomas do Covid-19',
                            contents: ContentDetails.sintomas)))
              },
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          "assets/rules.png",
                          width: MediaQuery.of(context).size.width * 0.45,
                          fit: BoxFit.fitWidth,
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 62,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Regras básicas',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => GalleryView(
                            appBarTitle: 'Regras básicas',
                            images: regras_basicas)))
              },
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          "assets/suspect.png",
                          width: MediaQuery.of(context).size.width * 0.45,
                          fit: BoxFit.fitWidth,
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 72,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Atuar perante um caso suspeito',textAlign: TextAlign.center,style: TextStyle(fontSize: 19),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView(
                            appBarTitle: 'Atuar perante um caso suspeito',
                            contents: ContentDetails.suspeito)))
              },
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          "assets/prevention.png",
                          height: 120,
                          fit: BoxFit.fitHeight,
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 72,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Medidas de prevenção do COVID-19',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => GalleryView(
                            appBarTitle: 'Medidas de prevenção do COVID-19',
                            images: medidas)))
              },
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/grandparents.png"),
                      fit: BoxFit.fill),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                          'Maiores de 70 anos e Imunodeprimidos e doença crónica',style: TextStyle(
                        fontSize: 17
                      ),),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView(
                            appBarTitle: 'Covid-19',
                            contents: ContentDetails.mairoes)))
              },
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/citizen.png"),
                      fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Cidadão geral',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView(
                            appBarTitle: 'Cidadão geral ',
                            contents: ContentDetails.generalCitizen)))
              },
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          "assets/closed.png",
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 62,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('O que tem de encerrar',textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView(
                              appBarTitle: 'O que tem de encerrar',
                              contents: ContentDetails.de_encerrar,
                              hasSearch: true,
                            )))
              },
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 18.0, ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          "assets/open.png",
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 62,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'O que pode estar aberto',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView(
                              appBarTitle: 'O que pode estar aberto',
                              contents: ContentDetails.estar_aberto,
                              hasSearch: true,
                            )))
              },
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/other_measures.png'),
                      fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Outras medidas'),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView(
                              appBarTitle: 'Outras medidas',
                              contents: ContentDetails.outras_medidas,
                              hasExpandedTile: true,
                            )))
              },
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/attachments.png'),
                      fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 62,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Ficheiros Anexados',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            AttachmentContentsView('Ficheiros Anexados')))
              },
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset(
                        "assets/dre.png",
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 62,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Cronologia da legislação',textAlign: TextAlign.center,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                launchCaller(
                    'https://dre.pt/legislacao-covid-19-por-data-de-publicacao')
              },
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/world.png'), fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 62,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Covid-19 no mundo',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () => {launchCaller('https://www.bing.com/covid')},
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset(
                        "assets/dgs.png",
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 67,
                        width: MediaQuery.of(context).size.width * 0.45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'covid-19 em Portugal',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () => {
                launchCaller(
                    'https://covid19.min-saude.pt/ponto-de-situacao-atual-em-portugal/')
              },
            ),
          ),
          Card(
            color: Colors.transparent,
            elevation: 20,
            child: InkWell(
              child: Container(
                height: 180,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/checklist.jpg"),
                      fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Procedimentos',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView(
                              appBarTitle: 'Procedimentos',
                              contents: ContentDetails.procedimentos,
                              hasExpandedTile: true,
                            )))
              },
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Card(
              color: Colors.transparent,
              elevation: 20,
              child: InkWell(
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 40.0, left: 10, right: 10),
                        child: Image.asset("assets/important.png"),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 62,
                          width: MediaQuery.of(context).size.width * 0.45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Confinamento obrigatório',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DetailView(
                              appBarTitle: 'Confinamento obrigatório',
                              contents: ContentDetails.confinamento_obrigatorio)))
                },
              ),
            ),
          ),
        ],
      ),
    ],
  ));
}

launchCaller(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
