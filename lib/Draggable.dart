import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Draggable Example',
    home: new DraggableExample(),
  ));
}

class DraggableExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Draggable Example'),
      ),
      body: new Column(
        children: <Widget>[
          new Draggable<int>(
            data: 1,
            child: const Text('Source'),
            feedback: const Text('Dragging'),
            childWhenDragging: new Text(''),
            onDragStarted: () {
              print('onDragStarted');
            },
          ),
          new DragTarget<int>(
            builder: (BuildContext context, List<int> data, List<dynamic> rejects) {
              return new Container(height: 100.0, child: const Text('Target'));
            },
            onAccept: (int data) {
              print('onAccept data = ' + data.toString());
            },
          ),
        ],
      ),
    );
  }
}