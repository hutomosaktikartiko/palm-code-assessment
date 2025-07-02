import 'package:flutter/material.dart';

import '../../../home/domain/entities/book_entity.dart';

class BookDetailsPageParams {
  final BookEntity book;

  const BookDetailsPageParams({required this.book});
}

class BookDetailsPage extends StatelessWidget {
  final BookDetailsPageParams params;

  const BookDetailsPage({super.key, required this.params});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
