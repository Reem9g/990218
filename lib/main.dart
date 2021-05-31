import 'package:d_details_ui/Screens/logIn.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

void main() async {
  /// first is AppID
  /// then server
  await Parse().initialize("WNnA19JQ00UCVQibYEJo7wT2p6WQwNcUQc6swKyU",
      "https://parseapi.back4app.com",
      clientKey: "VWeYuXo7PpLv9A9uk2HXvC47yESoGGhc2gPHccs3");

  var apiResponse = await ParseObject('Doctors').getAll();
  if (apiResponse.success) {
    for (var testObject in apiResponse.result) {
      print(testObject.toString());
    }
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }


}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final todoController = TextEditingController();

  void addToDo() async {
    if (todoController.text.trim().isEmpty) {
      scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text("Empty title"),
        duration: Duration(seconds: 2),
      ));
      return;
    }
    await saveTodo(todoController.text);
    setState(() {
      todoController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parse Todo List"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      key: scaffoldKey,
      body: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(17.0, 1.0, 7.0, 1.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      autocorrect: true,
                      textCapitalization: TextCapitalization.sentences,
                      controller: todoController,
                      decoration: InputDecoration(
                          labelText: "New todo",
                          labelStyle: TextStyle(color: Colors.blueAccent)),
                    ),
                  ),
                  RaisedButton(
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: Text("ADD"),
                      onPressed: addToDo)
                ],
              )),
          Expanded(
              child: FutureBuilder<List<ParseObject>>(
                  future: getTodo(),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                      case ConnectionState.waiting:
                        return Center(
                          child: Container(
                              width: 100,
                              height: 100,
                              child: CircularProgressIndicator()),
                        );
                      default:
                        if (snapshot.hasError) {
                          return Center(
                            child: Text("Error..."),
                          );
                        } else {
                          return ListView.builder(
                              padding: EdgeInsets.only(top: 10.0),
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {

                                //*************************************
                                //Get Parse Object Values
                                final varTodo = snapshot.data[index];
                                final varTitle = '';
                                final varDone =  false;
                                //*************************************

                                return ListTile(
                                  title: Text(varTitle),
                                  leading: CircleAvatar(
                                    child: Icon(
                                        varDone ? Icons.check : Icons.error),
                                    backgroundColor:
                                    varDone ? Colors.green : Colors.blue,
                                    foregroundColor: Colors.white,
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Checkbox(
                                          value: varDone,
                                          onChanged: (value) async {
                                            await updateTodo(
                                                varTodo.objectId, value);
                                            setState(() {
                                              //Refresh UI
                                            });
                                          }),
                                      IconButton(
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.blue,
                                        ),
                                        onPressed: () async {
                                          await deleteTodo(varTodo.objectId);
                                          setState(() {
                                            Scaffold.of(context)
                                                .removeCurrentSnackBar();
                                            final snackBar = SnackBar(
                                              content: Text("Todo deleted!"),
                                              duration: Duration(seconds: 2),
                                            );
                                            Scaffold.of(context)
                                                .showSnackBar(snackBar);
                                          });
                                        },
                                      )
                                    ],
                                  ),
                                );
                              });
                        }
                    }
                  }))
        ],
      ),
    );
  }

  Future<void> saveTodo(String title) async {
    await Future.delayed(Duration(seconds: 1), () {});
  }

  Future<List<ParseObject>> getTodo() async {
    await Future.delayed(Duration(seconds: 2), () {});
    return [];
  }

  Future<void> updateTodo(String id, bool done) async {
    await Future.delayed(Duration(seconds: 1), () {});
  }

  Future<void> deleteTodo(String id) async {
    await Future.delayed(Duration(seconds: 1), () {});
  }
}

