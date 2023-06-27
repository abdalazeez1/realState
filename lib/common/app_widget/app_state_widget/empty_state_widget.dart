part of 'app_state_widget.dart';

class _EmptyStateWidget extends AppStateWidget {
  const _EmptyStateWidget({
    Key? key,
    this.message,
    this.title,
    this.onPressed,
  }) : super._(key: key);

  final String? message;
  final String? title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message ?? ''),
    );
  }
}
