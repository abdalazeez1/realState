part of 'app_state_widget.dart';

class _ErrorStateWidget extends AppStateWidget {
  const _ErrorStateWidget({
    Key? key,
    this.message,
    this.onPressed,
    this.isShowLogoutBtn = false,
  }) : super._(key: key);

  final String? message;
  final bool? isShowLogoutBtn;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message ?? ""),
    );
  }
}
