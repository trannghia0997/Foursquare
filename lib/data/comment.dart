class Comment {
  final String avatarUrl;
  final String userName;
  final int rating;
  final String content;
  final DateTime date;

  Comment({
    required this.avatarUrl,
    required this.userName,
    required this.rating,
    required this.content,
    required this.date,
  });
}

// Sample comments data
List<Comment> comments = [
  Comment(
    avatarUrl: 'https://via.placeholder.com/50',
    userName: 'User A',
    rating: 4,
    content: 'Great product, highly recommend!',
    date: DateTime.now().subtract(const Duration(days: 5)),
  ),
  Comment(
    avatarUrl: 'https://via.placeholder.com/50',
    userName: 'User B',
    rating: 5,
    content: 'Awesome quality, will buy again!',
    date: DateTime.now().subtract(const Duration(days: 3)),
  ),
  Comment(
    avatarUrl: 'https://via.placeholder.com/50',
    userName: 'User C',
    rating: 3,
    content: 'Could be better, but still good.',
    date: DateTime.now().subtract(const Duration(days: 1)),
  ),
];
