import 'package:dubug_app/models/news.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/news_service.dart';

// Crei un singleton UserService
final newsServiceProvider = Provider((ref) => NewsService());

// FutureProvider che usa il service
final newssProvider = FutureProvider<List<News>>((ref) async {
  final newsService = ref.watch(newsServiceProvider);
  return newsService.fetchNews();
});
