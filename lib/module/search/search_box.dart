
import 'package:block_sample/module/search/search_bloc.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  final SearchBloc bloc;

  SearchBox({SearchBloc bloc}) : this.bloc = bloc;

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  final searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController.addListener(() {
      var query = searchController.text;
      widget.bloc.search(query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: searchController,
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.search),
            hintText: "Search...",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
