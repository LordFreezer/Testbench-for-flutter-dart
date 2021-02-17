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
  // Data members for the chapter that is selected at the start screen.
  final String currentChapter;
  ArgsPage(this.currentChapter);
  // Conditional that takes the name of the chapter from my datafil and
  // returns the respective list from my datafil.
  List getMember(String name) {
    if (name == 'narutoChapter232') return narutoChapter232;
    if (name == 'bleachChapter25') return bleachChapter25;
  }
}

class _PageState extends State<PageScreen> {
  _Controller con;
  // Global index that controls the page number.
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
    // Object for retrieving arguments from ArgsPage passed from central
    // navigation in main.
    final ArgsPage arg = ModalRoute.of(context).settings.arguments;
    // Condensed means of saving and retrieving the title for each page.
    String title_1 = arg.getMember(arg.currentChapter)[index].title;

    return Scaffold(
      appBar: AppBar(
        title: Text(title_1),
        actions: [
          IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () => {
                    // Adds the specific page to the list of book marks in datafil.
                    bookmarks.add(arg.getMember(arg.currentChapter)[index]),
                  }),
        ],
      ),
      // Controls the list of pages for display.
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
    // Object for retrieving arguments from ArgsPage passed from central
    // navigation in main.
    final ArgsPage arg = ModalRoute.of(context).settings.arguments;

    return Stack(
      children: [
        GestureDetector(
          onDoubleTapDown: _handleDoubleTapDown,
          onDoubleTap: _handleDoubleTap,
          child: InteractiveViewer(
            transformationController: _transformationController,
            child:
                // Here is the image for the specific page that the user is looking at.
                Image.asset(arg.getMember(arg.currentChapter)[index].imageLoc),
          ),
        ),
        Visibility(
          // Controls whether or not the next page button is visable based on if the
          // the user is looking at the last page.
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
          // Controls whether or not the previous page button is visible based on if the
          // user is looking at the first page.
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
      // For a 2x zoom
      _transformationController.value = Matrix4.identity()
        ..translate(-position.dx * 2, -position.dy * 2)
        ..scale(2.0);
      // Fox a 3x zoom
      // ..translate(-position.dx * 2, -position.dy * 2)
      // ..scale(3.0);
      // EDIT: I am keeping the scalar value the same since
      // I like the level of zoom.

    }
  }
}
