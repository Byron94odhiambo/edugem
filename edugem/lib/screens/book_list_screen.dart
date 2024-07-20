import 'package:flutter/material.dart';
import '../models/book.dart';

class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Book> books = [
    Book(id: '1', title: 'Book One', author: 'Author One'),
    Book(id: '2', title: 'Book Two', author: 'Author Two'),
    Book(id: '3', title: 'Book Three', author: 'Author Three'),
    // Add more books here
  ];

  List<Book> readingList = [];

  void addToReadingList(Book book) {
    setState(() {
      readingList.add(book);
    });
  }

  void removeFromReadingList(Book book) {
    setState(() {
      readingList.remove(book);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  trailing: ElevatedButton(
                    onPressed: () => addToReadingList(book),
                    child: const Text('Add'),
                  ),
                );
              },
            ),
          ),
          const Divider(),
          const Text(
            'Reading List',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: readingList.length,
              itemBuilder: (context, index) {
                final book = readingList[index];
                return ListTile(
                  title: Text(book.title),
                  subtitle: Text(book.author),
                  trailing: ElevatedButton(
                    onPressed: () => removeFromReadingList(book),
                    child: const Text('Remove'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
