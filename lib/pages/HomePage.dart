import 'package:flutter/material.dart';
import 'package:todo/pages/item_add_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow[400],
          child: Icon(Icons.add),
          onPressed: () async {
            final result =
                await Navigator.push(context, MaterialPageRoute<String>(
              builder: (context) {
                return ItemAddPage();
              },
            ));
            setState(() {
              if (result.isNotEmpty) {
                _list.add(result);
              }
            });
          },
        ),
        appBar: AppBar(
          title: Text("Lista de tarefas"),
        ),
        body: _list.length > 0
            ? ListView.builder(
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    background: Container(
                      color: Colors.red,
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        _list.removeAt(index);
                      });
                    },
                    child: ListTile(title: Text(_list[index])),
                    key: Key(_list[index]),
                  );
                },
              )
            : Center(
                child: Text("Não existem tarefas pendentes"),
              ));
  }
}
