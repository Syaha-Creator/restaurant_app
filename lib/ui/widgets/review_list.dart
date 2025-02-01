import 'package:flutter/material.dart';

class ReviewList extends StatelessWidget {
  final List<Map<String, String>> reviews;
  const ReviewList({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: reviews.length,
      itemBuilder: (context, index) {
        final review = reviews[index];
        return ListTile(
          leading: const Icon(Icons.person),
          title: Text(review['name'] ?? "Anonimous"),
          subtitle: Text(review['review'] ?? "No review"),
        );
      },
    );
  }
}
