import 'package:block_sample/module/search/search_bloc.dart';
import 'package:block_sample/module/search/search_box.dart';
import 'package:block_sample/module/search/search_result.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  final SearchBloc searchBloc = SearchBloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          SearchBox(
            bloc: searchBloc,
          ),
          Expanded(
            child: SearchResult(
              bloc: searchBloc,
            ),
          ),
        ],
      ),
    );
  }
}

