import 'package:flutter/material.dart';
import 'package:creative1/model/pages.dart';

class PageScreen extends StatefulWidget {
  static const routeName = '/pageScreen';

  @override
  State<StatefulWidget> createState() {
    return _PageState();
  }
}

class ArgsPage {
  final String currentChapter;
  ArgsPage(this.currentChapter);
  List getMember(String name) {
    if (name == 'narutoChapter232') return narutoChapter232;
    if (name == 'bleachChapter25') return bleachChapter25;
  }
}

class _PageState extends State<PageScreen> {
  _Controller con;
  int index = 0;

  @override
  void initState() {
    super.initState();
    con = _Controller(this);
  }

  void render(fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    final ArgsPage arg = ModalRoute.of(context).settings.arguments;
    String title_1 = arg.getMember(arg.currentChapter)[index].title;

    return Scaffold(
      appBar: AppBar(
        title: Text(title_1),
        actions: [
          IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () => {
                    bookmarks.add(arg.getMember(arg.currentChapter)[index]),
                  }),
        ],
      ),
      body: con.getPage(context, index),
    );
  }
}

class _Controller {
  _PageState state;
  _Controller(this.state);
  bool _isVisible = true;
  final _transformationController = TransformationController();
  TapDownDetails _doubleTapDetails;

  Widget getPage(BuildContext context, int index) {
    final ArgsPage arg = ModalRoute.of(context).settings.arguments;

    return Stack(
      children: [
        GestureDetector(
          onDoubleTapDown: _handleDoubleTapDown,
          onDoubleTap: _handleDoubleTap,
          child: InteractiveViewer(
            transformationController: _transformationController,
            child:
                Image.asset(arg.getMember(arg.currentChapter)[index].imageLoc),
          ),
        ),
        Visibility(
          visible: (state.index != arg.getMember(arg.currentChapter).length - 1)
              ? _isVisible
              : !_isVisible,
          child: Positioned(
            top: 250,
            right: 10,
            child: IconButton(
              iconSize: 50,
              color: Colors.red,
              icon: Icon(Icons.arrow_right),
              onPressed: () {
                state.render(
                  () {
                    _transformationController.value = Matrix4.identity();
                    state.index++;
                  },
                );
              },
            ),
          ),
        ),
        Visibility(
          visible: (state.index != 0) ? _isVisible : !_isVisible,
          child: Positioned(
            top: 250,
            left: 10,
            child: IconButton(
              iconSize: 50,
              color: Colors.red,
              icon: Icon(Icons.arrow_left),
              onPressed: () {
                state.render(
                  () {
                    _transformationController.value = Matrix4.identity();
                    state.index--;
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }

  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      _transformationController.value = Matrix4.identity();
    } else {
      final position = _doubleTapDetails.localPosition;
      // For a 3x zoom
      _transformationController.value = Matrix4.identity()
        ..translate(-position.dx * 2, -position.dy * 2)
        ..scale(2.0);
      // Fox a 2x zoom
      // ..translate(-position.dx, -position.dy)
      // ..scale(2.0);

    }
  }
}
