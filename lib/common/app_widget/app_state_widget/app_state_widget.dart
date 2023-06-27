import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'error_state_widget.dart';

part 'empty_state_widget.dart';
part 'loading_State_widget.dart';

// part 'no_internet_state_widget.dart';



abstract class AppStateWidget extends StatelessWidget {
  const AppStateWidget._({Key? key}) : super(key: key);

  const factory AppStateWidget.error({
    String? message,
    VoidCallback? onPressed,
    bool? isShowLogoutBtn,
    Key? key,
  }) = _ErrorStateWidget;

  // const factory AppStateWidget.noInternet({
  //   String? message,
  //   VoidCallback? onPressed,
  //   Key? key,
  // }) = _NoInternetStateWidget;

  const factory AppStateWidget.empty({
    String? message,
    String? title,
    VoidCallback? onPressed,
    Key? key,
  }) = _EmptyStateWidget;

  const factory AppStateWidget.loading({
    Key? key,
  }) = _LoadingStateWidget;


}
