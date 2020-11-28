import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final _textStyle = new TextStyle(fontSize: 44);
  int _cnt = 10;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("titulo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Clicks", style: _textStyle),
            Text(
              "$_cnt",
              style: _textStyle,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      children: [
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(child: Icon(Icons.reset_tv), onPressed: _reset),
        Expanded(child: SizedBox(width: 20.0)),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
        SizedBox(width: 10.0,),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _remove)

      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _add(){
   setState(() => _cnt++);
  }

  void _remove(){
    setState(() => _cnt--);
  }

  void _reset(){
    setState(()=> _cnt = 0);
  }


}
