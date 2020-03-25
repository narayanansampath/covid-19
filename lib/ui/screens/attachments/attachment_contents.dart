import 'package:flutter/material.dart';

import 'attachments_screen.dart';

class AttachmentContentsView extends StatelessWidget {

  final String title;

  AttachmentContentsView(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: _attachmentContentsBody(context),
    );
  }

  _attachmentContentsBody(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0,20,10.0,10.0),
          child: Card(
            elevation: 20,
            child: ListTile(
              title: Text('COVID-19 (atos legais)_24_03_V13 '),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AttachmentView('Ficheiros Anexados', pages: 8, fileName: 'atos_legais.pdf',)))
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            elevation: 20,
            child: ListTile(
              title: Text('Fluxograma_Procedimentos CTER Braga'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AttachmentView('Ficheiros Anexados', pages: 1, fileName: 'CTER_Braga.pdf',)))
              },
            ),
          ),
        )
      ],
    );
  }
}
