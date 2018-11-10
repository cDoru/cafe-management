import 'package:flutter/material.dart';

import './invoice.view.dart';

import './../Constants/theme.dart' as theme;

class HistoryScreen extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return new _HistoryScreenState();
    }
}

class _HistoryScreenState extends State<HistoryScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: new ListView.builder(
        itemExtent: 80.0,
        itemCount: 20,
        itemBuilder: (_, index) => _buildTable(context)),
    );
  }
  
  Widget _buildTable(BuildContext context) {
    return new Container(
    padding: EdgeInsets.zero,
    margin: EdgeInsets.zero,
    child: new Card(
      color: theme.primaryColor,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Expanded(child: new Container()),
          new Text(
            'Table 1',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: theme.accentColor, 
              fontFamily: 'Dosis', 
              fontSize: 20.0
            ),
          ),
          new Expanded(child: new Container()),
          new Text(
            '2 hours ago',
            style: const TextStyle(
              color: theme.fontColor,
              fontFamily: 'Dosis',
              fontSize: 13.0,
              fontWeight: FontWeight.w600
            ),
          ),
          new Expanded(child: new Container()),
          new Text(
            '\$250',
            style: const TextStyle(
              color: theme.fontColor,
              fontFamily: 'Dosis',
              fontSize: 14.0,
              fontWeight: FontWeight.w500
            ),
          ),
          new Expanded(child: new Container()),
          new RaisedButton(
            color: Colors.lightBlueAccent,
            child: new Text(
              'Detail',
              style: const TextStyle(
                color: theme.fontColor,
                fontFamily: 'Dosis',
                fontSize: 15.0,
                fontWeight: FontWeight.w500)
              ),
            onPressed: () {
              _pushInvoiceScreen();
            },
          ),
          new Expanded(child: new Container()),
        ],
      ),
    )
    );
  }

  void _pushInvoiceScreen() {
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) {
        return new Scaffold(
          appBar: new AppBar(
            title: new Text('Invoice Details',
              style: new TextStyle(color: theme.accentColor, fontFamily: 'Dosis'),),
            iconTheme: new IconThemeData(color: theme.accentColor),
            centerTitle: true,
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.edit, size: 18.0,),
                onPressed: () {},
              )
            ],
          ),
          body: new InvoiceScreen(),
        );
      }),
    );
  }

}