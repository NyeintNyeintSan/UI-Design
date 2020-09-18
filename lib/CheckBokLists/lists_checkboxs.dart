import 'package:flutter/material.dart';
import '../globals.dart';

class listCheckBox extends StatefulWidget {
  @override
  _listCheckBox createState() => _listCheckBox();
}

class _listCheckBox extends State<listCheckBox> {
  List<String> inputs = new List<String>();
  List<bool> check = new List<bool>();
  Widget appBarTitle = new mediumText(
    text: "Search Sample",
  );
  Icon actionIcon = new Icon(
    Icons.search,
    color: Colors.white,
  );
  final TextEditingController _searchQuery = new TextEditingController();
  bool _IsSearching;
  String _searchText = "";

  _listCheckBox() {
    _searchQuery.addListener(() {
      if (_searchQuery.text.isEmpty) {
        setState(() {
          _IsSearching = false;
          _searchText = "";
        });
      }
      else {
        setState(() {
          _IsSearching = true;
          _searchText = _searchQuery.text;
        });
      }
    });
  }

  @override
  void initState() {
    _IsSearching = false;
    setState(() {
      //value of CheckBoxs
      check.add(true);
      check.add(false);
      check.add(true);
      check.add(false);
      check.add(false);
      check.add(false);
      check.add(false);
      check.add(true);

      // Items of CheckBoxs List
      inputs.add("Movie");
      inputs.add("Food");
      inputs.add("Song");
      inputs.add("Dance");
      inputs.add("Actor");
      inputs.add("Artist");
      inputs.add("Travelling");
      inputs.add("Study");
    });
  }

// calling function when item Slect or Deselect
  void ItemChange(bool val, int index, BuildContext context) {
    setState(() {
      check[index] = val;
    });
    if (check[index] == true) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: appColor,
          content: lightText(text: "Select ${inputs[index]}"),
          duration: Duration(seconds: 1),
        ),
      );
    } else {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: appColor,
          content: lightText(text: "DeSelect ${inputs[index]}"),
          duration: Duration(seconds: 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: appColor,
        title: appBarTitle,
        actions: <Widget>[
          new IconButton(
              icon: actionIcon,
              onPressed: () {
                setState(() {
                  if(this.actionIcon.icon==Icons.search){
                    this.actionIcon=new Icon(
                      Icons.close,
                      color: Colors.white,
                    );
                    this.appBarTitle=new TextField(
                      controller: _searchQuery,
                      style: new TextStyle(color: Colors.white),
                      decoration: new InputDecoration(
                        prefix: Icon(Icons.search),
                        hintText: "Search...",
                        hintStyle: new TextStyle(color: Colors.white)
                      ),
                    );
                    handleSearchStart();
                  }
                  else{
                    handleSearchEnd();
                  }
                });

              }
          )
        ],
      ),
        body: _IsSearching?new ListView(
          padding: new EdgeInsets.symmetric(vertical: 8.0),
          children: _buildList(),
        ):
        new ListView.builder(
            itemCount: inputs.length,
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                child: new Container(
                  padding: new EdgeInsets.all(10.0),
                  child: new Column(
                    children: <Widget>[
                      new CheckboxListTile(
                          value: check[index],
                          activeColor: appColor,
                          title: lightText(text: '${inputs[index]}'),
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (bool val) {
                            ItemChange(val, index, context);
                          })
                    ],
                  ),
                ),
              );
            }),
    );
  }
  List<ChildItem> _buildList(){
    if(_searchText.isEmpty){
      return inputs.map((contact) => new ChildItem(contact)).toList();
    }
    else{
      List<String>_searchList= List();
      for(int i=0;i<inputs.length;i++){
        String name=inputs[i];
        if(name.toLowerCase().contains(_searchText.toLowerCase())){
          _searchList.add(name);
        }
      }
      return _searchList.map((contact)=> new ChildItem(contact)).toList();
    }
  }
  void handleSearchStart(){
    setState(() {
      _IsSearching=true;
    });
  }
  void handleSearchEnd(){
    setState(() {
      this.actionIcon=Icon(
          Icons.search,
        color: Colors.white,
      );
      this.appBarTitle=new mediumText(text: "Search App Bar",textColor: Colors.white,);
      _IsSearching=false;
      _searchQuery.clear();
    });
  }
}
class ChildItem extends StatelessWidget {
  final String name;
  ChildItem(this.name);
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: Column(
          children: <Widget>[
            new ListTile(
              title: new mediumText(text: this.name),
            ),
            new Divider(
              color: Colors.grey[600],
            )
          ],
        ));
  }
}