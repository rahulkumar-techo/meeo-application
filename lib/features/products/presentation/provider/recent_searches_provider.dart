import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Manages and caches the user's recent search queries.
///
/// Stores up to a maximum of 3 unique search queries in LIFO order
/// (most recent search at the beginning of the list).
class RecentSearchesNotifier extends Notifier<List<String>> {
  @override
  List<String> build() {
    // Initial state: empty search history.
    return const [];
  }

  /// Adds a new search query to the recent searches list.
  ///
  /// - Removes existing duplicate instances (case-insensitive) to prevent duplicate chips.
  /// - Places the newest query at index 0.
  /// - Truncates the list to maintain a maximum of 3 cached searches.
  void addSearch(String query) {
    final trimmed = query.trim();
    if (trimmed.isEmpty) return;

    state = [
      trimmed,
      ...state.where((item) => item.toLowerCase() != trimmed.toLowerCase()),
    ].take(3).toList();
  }

  /// Removes a specific search query from the cached list.
  void removeSearch(String query) {
    state = state.where((item) => item != query).toList();
  }

  /// Clears all cached recent searches.
  void clearSearches() {
    state = const [];
  }
}

/// Riverpod provider exposing [RecentSearchesNotifier] and the list of cached searches.
final recentSearchesProvider =
    NotifierProvider<RecentSearchesNotifier, List<String>>(
      RecentSearchesNotifier.new,
    );
