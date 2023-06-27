// part of 'app_state_widget.dart';
//
// class _GuestStateWidget extends AppStateWidget {
//   const _GuestStateWidget({
//     Key? key,
//     this.message,
//   }) : super._(key: key);
//
//   final String? message;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: HWEdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(backgroundColor: Colors.lightGreen, radius: 80.r),
//             10.verticalSpace,
//             AppTextView(
//               text: LocaleKeys.Sorry_This_content_require_have_account.tr(),
//               style: context.textTheme.headline6,
//               textAlign: TextAlign.center,
//             ),
//             20.verticalSpace,
//             AppTextButton(
//               appButtonStyle: AppButtonStyle.secondary,
//               text: LocaleKeys.Login.tr(),
//               onPressed: () => Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
//                 builder: (_) => LoginPage(),
//               ),(route) => false),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
