part of 'app_state_widget.dart';



class _LoadingStateWidget extends AppStateWidget {
  const _LoadingStateWidget({
    Key? key,
  }) : super._(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
