import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:palm_code_assessment/features/home/presentation/bloc/books_bloc.dart';
import 'package:palm_code_assessment/features/home/presentation/bloc/books_event.dart';
import 'package:palm_code_assessment/features/home/presentation/bloc/books_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<BooksBloc, BooksState>(
          builder: (context, state) {
            return Text(
              'Books${state.maybeWhen(success: (books, count, _, __, ___, ____) => ' ($count)', orElse: () => '')}',
            );
          },
        ),
      ),
      body: BlocBuilder<BooksBloc, BooksState>(
        builder: (context, state) {
          return state.when(
            initial: () =>
                const Center(child: Text('Press button to load books')),

            loading: () => const Center(child: CircularProgressIndicator()),

            success:
                (
                  books,
                  totalCount,
                  nextUrl,
                  prevUrl,
                  isPaginating,
                  hasReachedMax,
                ) {
                  return Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: books.length + (isPaginating ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index == books.length) {
                              // Show loading indicator at bottom when paginating
                              return const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }

                            final book = books[index];
                            return ListTile(
                              title: Text(book.title),
                              subtitle: Text(
                                book.authors.isNotEmpty
                                    ? book.authors.first.name
                                    : 'Unknown Author',
                              ),
                            );
                          },
                        ),
                      ),

                      // Pagination Controls
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: prevUrl != null && !isPaginating
                                  ? () => context.read<BooksBloc>().add(
                                      const BooksEvent.loadPreviousPage(),
                                    )
                                  : null,
                              child: const Text('Previous'),
                            ),

                            ElevatedButton(
                              onPressed: nextUrl != null && !isPaginating
                                  ? () => context.read<BooksBloc>().add(
                                      const BooksEvent.loadNextPage(),
                                    )
                                  : null,
                              child: const Text('Load More'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },

            failure: (message, books, count, nextUrl, prevUrl) {
              return Column(
                children: [
                  if (books.isNotEmpty) ...[
                    Expanded(
                      child: ListView.builder(
                        itemCount: books.length,
                        itemBuilder: (context, index) {
                          final book = books[index];
                          return ListTile(
                            title: Text(book.title),
                            subtitle: Text(
                              book.authors.isNotEmpty
                                  ? book.authors.first.name
                                  : 'Unknown Author',
                            ),
                          );
                        },
                      ),
                    ),
                  ],

                  Center(
                    child: Column(
                      children: [
                        Text('Error: $message'),
                        ElevatedButton(
                          onPressed: () => context.read<BooksBloc>().add(
                            const BooksEvent.refreshBooks(),
                          ),
                          child: const Text('Retry'),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            context.read<BooksBloc>().add(const BooksEvent.getBooks()),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
