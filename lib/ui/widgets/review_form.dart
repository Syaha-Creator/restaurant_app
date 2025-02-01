import 'package:flutter/material.dart';

class ReviewForm extends StatefulWidget {
  final Function(String name, String review) onSubmit;
  const ReviewForm({super.key, required this.onSubmit});

  @override
  State<ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<ReviewForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextField(
        controller: _nameController,
        decoration: const InputDecoration(
          labelText: 'Name',
        ),
      ),
      SizedBox(height: 8),
      TextField(
        controller: _reviewController,
        decoration: const InputDecoration(
          labelText: 'Review',
        ),
        maxLines: 3,
      ),
      SizedBox(height: 8),
      ElevatedButton(
          onPressed: () {
            if (_nameController.text.isNotEmpty &&
                _reviewController.text.isNotEmpty) {
              widget.onSubmit(_nameController.text, _reviewController.text);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Name and review cannot be empty')));
            }
          },
          child: const Text('Submit Review')),
    ]);
  }
}
