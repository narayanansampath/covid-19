import 'package:covid/models/content_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:covid/ui/containers/custom_expansion_tile.dart' as custom;
import 'package:url_launcher/url_launcher.dart';

class DetailView extends StatefulWidget {
  String appBarTitle;
  bool hasSearch;
  bool hasExpandedTile;
  bool isAbout;
  List<ContentData> contents = [];

  DetailView(
      {@required this.appBarTitle,
      this.hasExpandedTile = false,
      this.hasSearch = false,
        this.isAbout = false,
      this.contents});

  @override
  _DetailViewState createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  List<String> searchContents = [];

  TextEditingController controller = new TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.contents != null) {
      searchContents.addAll(widget.contents[0].data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: _DetailViewBody(),
    );
  }

  _DetailViewBody() {
    return widget.isAbout ?
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text.rich(
      TextSpan(
        text: 'Esta aplicação foi elaborada pelo', // default text style
        style: TextStyle(
          fontSize: 20,
        ),
        children: <TextSpan>[
          TextSpan(text: ' 1.º sargento Ricardo Manuel da Costa Marques, adjunto do  ', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: 'comandante do posto de Caldas das Taipas com formação académica: Engenheiro em tecnologias e sistemas de informação,'),
          TextSpan(text: ' Swati Kapoor,', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' Formação académica: Engenheira de ciências da computação \n e pela'),
          TextSpan(text: ' Narayanan Sampath: ', style: TextStyle(fontWeight: FontWeight.bold), recognizer: new TapGestureRecognizer()..onTap = () => {launchCaller('https://www.linkedin.com/in/narayanan-sampath-196681130/')},),
          TextSpan(text: ' Flutter Developer',recognizer: new TapGestureRecognizer()..onTap = () => {launchCaller('https://www.linkedin.com/in/narayanan-sampath-196681130/')}, ),
          TextSpan(text: ' [ Visit profile ]', style: TextStyle(decoration: TextDecoration.underline), recognizer: new TapGestureRecognizer()..onTap = () => {launchCaller('https://www.linkedin.com/in/narayanan-sampath-196681130/')}, ),
        ],
      ),
        textAlign: TextAlign.start,
    ),) :
      widget.hasExpandedTile
        ? Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.contents.length,
                    itemBuilder: (BuildContext context, int index) {
                      return custom.ExpansionTile(
                        headerBackgroundColor: Colors.black12,
                        iconColor: Colors.black,
                        title: widget.contents[index].title == null
                            ? Container()
                            : Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  widget.contents[index].title,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: widget.contents[index].data
                                .map((content) => Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Text(
                                          content,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black87,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                        ],
                        initiallyExpanded: true,
                      );
                    }),
              ),
            ],
          )
        : Column(
            children: <Widget>[
              widget.hasSearch ? _searchWidget() : Container(),
              Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.contents.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: widget.contents[index].title == null
                            ? Container()
                            : Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  widget.contents[index].title,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                        subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: widget.hasSearch
                                ? searchContents
                                    .map((content) => Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Text(
                                              content,
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                        ))
                                    .toList()
                                : widget.contents[index].data
                                    .map((content) => Flexible(
                                          child: Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Text(
                                              content,
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black87,
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                        ))
                                    .toList()),
                        onTap: () {},
                        enabled: false,
                      );
                    }),
              ),
            ],
          );
  }

  _searchWidget() {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0xffececee),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: TextField(
        controller: controller,
        onChanged: (value) {
          filterSearchResults(value);
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15.0),
          hintText: "Pesquise na lista",
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
          ),
        ),
        style: TextStyle(
          fontFamily: 'GTEestiProRegular',
        ),
      ),
    );
  }

  void filterSearchResults(String query) {
    List<String> dummySearchList = List<String>();
    dummySearchList.addAll(widget.contents[0].data);
    if (query.isNotEmpty) {
      List<String> dummyListData = List<String>();
      dummySearchList.forEach((item) {
        if (item.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        searchContents.clear();
        searchContents.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        searchContents.clear();
        searchContents.addAll(widget.contents[0].data);
      });
    }
  }

  launchCaller(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
