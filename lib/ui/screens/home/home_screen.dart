import 'package:covid/constants/detail_content.dart';
import 'package:covid/ui/screens/detail/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
            builder: (BuildContext context) => DetailView( appBarTitle: 'Elaborado por',isAbout: true,)))
            },
          )
        ],
      ),
      body: _homeScreenBody(context),
    );
  }
}

Widget _homeScreenBody(BuildContext context) {
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
                  image: DecorationImage(
                      image: AssetImage("assets/virus.png"), fit: BoxFit.fitHeight),
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
                      child: Text('Sintomas do covid-19'),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView( appBarTitle: 'Sintomas do Covid-19',contents: ContentDetails.sintomas)))
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
                      image: AssetImage("assets/important.png"), fit: BoxFit.cover),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Confinamento obrigatório', textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView( appBarTitle: 'Confinamento obrigatório',contents: ContentDetails.confinamento_obrigatorio)))
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
                      image: AssetImage("assets/grandparents.png"), fit: BoxFit.fill),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Maiores de 70 anos e Imunodeprimidos e doença crónica'),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView( appBarTitle: 'Covid-19',contents: ContentDetails.mairoes)))
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
                      image: AssetImage("assets/citizen.png"), fit: BoxFit.cover),
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
                      child: Text('Cidadão geral', textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView( appBarTitle: 'Cidadão geral ',contents: ContentDetails.generalCitizen)))
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
                      image: AssetImage('assets/closed.png'), fit: BoxFit.cover),
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
                      child: Text('O que tem de encerrar'),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView( appBarTitle: 'O que tem de encerrar',contents: ContentDetails.de_encerrar, hasSearch: true,)))
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
                      image: AssetImage('assets/open.png'), fit: BoxFit.cover),
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
                      child: Text('O que pode estar aberto', textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailView( appBarTitle: 'O que pode estar aberto',contents: ContentDetails.estar_aberto, hasSearch: true,)))
              },
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.transparent,
              elevation: 20,
              child: InkWell(
                child: Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/checklist.jpg"), fit: BoxFit.cover),
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
                        child: Text('Procedimentos', textAlign: TextAlign.center,),
                      ),
                    ),
                  ),
                ),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => DetailView( appBarTitle: 'Procedimentos',contents: ContentDetails.procedimentos, hasExpandedTile: true,)))
                },
              ),
            ),
          ),
        ],
      ),
    ],
  ));
}
