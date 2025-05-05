import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/news_provider.dart';

class NewsScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final newsSync = ref.watch(newssProvider);
    /*
    return Scaffold(
      appBar: AppBar(title: Text('Utenti')),
      body: usersAsync.when(
        loading: () => Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text('Errore: $err')),
        data: (users) => ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16),
                  title: Text(user.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  subtitle: Text(user.email),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    // naviga o mostra dettagli
                  },
*/

    return newsSync.when(
      loading: () => CircularProgressIndicator(),
      error: (error, stackTrace) => CircularProgressIndicator(),
      data: (news) => ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          final singleNews = news[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            child: ListTile(
              title: Text(singleNews.title),
              subtitle: Text(singleNews.content),
            ),
          );
        },
      ),
    );
  }
}
