// part of 'app_state_widget.dart';
//
// class _NoInternetStateWidget extends AppStateWidget {
//   const _NoInternetStateWidget({
//     Key? key,
//     this.message,
//     this.onPressed,
//   }) : super._(key: key);
//
//   final String? message;
//   final VoidCallback? onPressed;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: HWEdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const AppSvgPictureView(Assets.svgNoInternet),//todo check width height
//
//             // CircleAvatar(backgroundColor: Colors.lightGreen, radius: 80.r),
//             10.verticalSpace,
//             AppTextView(
//               text: LocaleKeys.lbl_no_internet_connection.tr(),
//               style: context.textTheme.titleLarge,
//             ),
//             if (onPressed != null) ...{
//               20.verticalSpace,
//               AppTextButton(
//                 appButtonStyle: AppButtonStyle.secondary,
//                 text: LocaleKeys.Retry.tr(),
//                 onPressed: onPressed,
//               ),
//             }
//           ],
//         ),
//       ),
//     );
//   }
// }
