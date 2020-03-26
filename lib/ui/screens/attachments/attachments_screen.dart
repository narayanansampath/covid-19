import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/zoomable.dart';
import 'package:native_pdf_renderer/native_pdf_renderer.dart';

class AttachmentView extends StatelessWidget {
  String title;
  int pages;
  String fileName;

  AttachmentView(this.title, {this.pages, @required this.fileName});

  Future<PDFDocument> _getDocument() async {
    return PDFDocument.openAsset('assets/${this.fileName}');
  }

  @override
  Widget build(BuildContext context) {
    final storage = Map<int, PDFPageImage>();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: FutureBuilder(
        future: _getDocument(),
        builder: (context, AsyncSnapshot<PDFDocument> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          return pages == 8
              ? PageView(
                  children: <Widget>[
                    ZoomableWidget(
                      minScale: 0.3,
                      maxScale: 3.0,
                      panLimit: 0.8,
                      child: ImageLoader(
                        storage: storage,
                        document: snapshot.data,
                        pageNumber: 1,
                      ),
                    ),
                    ZoomableWidget(
                      minScale: 0.3,
                      maxScale: 2.0,
                      panLimit: 0.8,
                      child: ImageLoader(
                        storage: storage,
                        document: snapshot.data,
                        pageNumber: 2,
                      ),
                    ),
                    ZoomableWidget(
                      minScale: 0.3,
                      maxScale: 2.0,
                      panLimit: 0.8,
                      child: ImageLoader(
                        storage: storage,
                        document: snapshot.data,
                        pageNumber: 3,
                      ),
                    ),
                    ZoomableWidget(
                      minScale: 0.3,
                      maxScale: 2.0,
                      panLimit: 0.8,
                      child: ImageLoader(
                        storage: storage,
                        document: snapshot.data,
                        pageNumber: 4,
                      ),
                    ),
                    ZoomableWidget(
                      minScale: 0.3,
                      maxScale: 2.0,
                      panLimit: 0.8,
                      child: ImageLoader(
                        storage: storage,
                        document: snapshot.data,
                        pageNumber: 5,
                      ),
                    ),
                    ZoomableWidget(
                      minScale: 0.3,
                      maxScale: 2.0,
                      panLimit: 0.8,
                      child: ImageLoader(
                        storage: storage,
                        document: snapshot.data,
                        pageNumber: 6,
                      ),
                    ),
                    ZoomableWidget(
                      minScale: 0.3,
                      maxScale: 2.0,
                      panLimit: 0.8,
                      child: ImageLoader(
                        storage: storage,
                        document: snapshot.data,
                        pageNumber: 7,
                      ),
                    ),
                    ZoomableWidget(
                      minScale: 0.3,
                      maxScale: 2.0,
                      panLimit: 0.8,
                      child: ImageLoader(
                        storage: storage,
                        document: snapshot.data,
                        pageNumber: 8,
                      ),
                    ),
                  ],
                  physics: AlwaysScrollableScrollPhysics(),
                )
              : PageView(children: <Widget>[
                  ZoomableWidget(
                    minScale: 0.3,
                    maxScale: 3.0,
                    panLimit: 0.9,
                    child: ImageLoader(
                      storage: storage,
                      document: snapshot.data,
                      pageNumber: 1,
                    ),
                  )
                ]);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Deslize para a direita',
                style: Theme.of(context).textTheme.title,
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageLoader extends StatelessWidget {
  ImageLoader({
    @required this.storage,
    @required this.document,
    @required this.pageNumber,
    Key key,
  }) : super(key: key);

  final Map<int, PDFPageImage> storage;
  final PDFDocument document;
  final int pageNumber;

  @override
  Widget build(BuildContext context) => FutureBuilder(
        future: _renderPage(),
        builder: (context, AsyncSnapshot<PDFPageImage> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error'),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Image(image: MemoryImage(snapshot.data.bytes));
        },
      );

  Future<PDFPageImage> _renderPage() async {
    if (storage.containsKey(pageNumber)) {
      return storage[pageNumber];
    }
    final page = await document.getPage(pageNumber);
    final pageImage = await page.render(
      width: page.width * 2,
      height: page.height * 2,
      format: PDFPageFormat.PNG,
    );
    await page.close();
    storage[pageNumber] = pageImage;
    return pageImage;
  }
}
