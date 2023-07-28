import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchResultView extends ConsumerStatefulWidget {
  const SearchResultView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SearchResultViewState();
}

class _SearchResultViewState extends ConsumerState<SearchResultView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
