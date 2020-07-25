import 'package:flutter/material.dart';

class ItemAddPage extends StatelessWidget {
  TextEditingController _controllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[400],
        child: Icon(Icons.done),
        onPressed: () {
          Navigator.pop(
              context,
              _controllerText.text =
                  _controllerText.text.isEmpty ? '' : _controllerText.text);
        },
      ),
      appBar: AppBar(
        title: Text("Adicionar nova tarefa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Descrição da tarefa"),
            TextField(
              controller: _controllerText,
            ),
          ],
        ),
      ),
    );
  }
}
