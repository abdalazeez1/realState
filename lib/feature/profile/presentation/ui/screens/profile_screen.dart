import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';
import 'package:fluttermoji/fluttermojiCustomizer.dart';
import 'package:fluttermoji/fluttermojiSaveWidget.dart';
import 'package:fluttermoji/fluttermojiThemeData.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/app_widget/app_state_widget/app_state_widget.dart';
import 'package:realstate/common/helper/dependencie_injection.dart';
import 'package:realstate/feature/profile/infrastructure/model/profile.dart';
import 'package:realstate/feature/profile/presentation/state/profile_bloc.dart';

import '../../../../../common/constant/constant.dart';
import '../../../../../common/network/page_state/result_builder.dart';
import '../../../../notification/view/notification.dart';
import 'edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileBloc>()..add(GetProfile()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return PageStateBuilder<Profile>(
                            init: () => const SizedBox(),
                            success: (data) => Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const TopImageProfile(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: kPage + 8),
                                  child: Center(
                                    child: Text(
                                      'Email: john.doe@example.com',
                                      style: Theme.of(context).textTheme.labelSmall,
                                    ),
                                  ),
                                ),
                                // // Cards Section
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: kPage),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      BorderStyleProfile(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              ProfileButton(
                                                isTop: true,
                                                icon: Icons.person,
                                                label: 'Edit Profile Information',
                                                onTap: () {
                                                  context.goNamed(EditProfileScreen.name);
                                                  // Add your edit profile information logic here
                                                },
                                              ),
                                              ProfileButton(
                                                icon: Icons.notifications,
                                                label: 'Notification',
                                                onTap: () {
                                                  context.pushNamed(NotificationScreen.name);
                                                  // Add your notification logic here
                                                },
                                              ),
                                              ProfileButton(
                                                icon: Icons.language,
                                                label: 'Language',
                                                onTap: () {
                                                  // Add your language selection logic here
                                                },
                                              ),
                                            ],
                                          )),
                                      const SizedBox(height: 20),
                                      // Theme Section
                                      BorderStyleProfile(
                                        child: ProfileButton(
                                          leading: Transform.scale(
                                              scale: 0.8,
                                              child: Switch(
                                                value: true,
                                                onChanged: (v) {},
                                              )),
                                          isTop: true,
                                          icon: Icons.color_lens,
                                          label: 'Theme',
                                          onTap: () {
                                            // Add your edit profile information logic here
                                          },
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      BorderStyleProfile(
                                        child: Column(
                                          children: [
                                            ProfileButton(
                                              isTop: true,
                                              icon: Icons.security,
                                              label: 'Security',
                                              onTap: () {
                                                // Add your edit profile information logic here
                                              },
                                            ),
                                            ProfileButton(
                                              icon: Icons.lock,
                                              label: 'Privacy Policy',
                                              onTap: () {
                                                // Add your edit profile information logic here
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            loading: () => const AppStateWidget.loading(),
                            error: (exception ,error) => const AppStateWidget.error(),
                            result: state.profileStatus,
                            empty: () => const SizedBox());
            },
          ),
        );
      }),
    );
  }
}

class BorderStyleProfile extends StatelessWidget {
  const BorderStyleProfile({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.background,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.shadow.withOpacity(0.15),
                spreadRadius: 0.4,
                offset: const Offset(0, 10),
                blurRadius: 10)
          ]),
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}

class TopImageProfile extends StatelessWidget {
  const TopImageProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: BackgroundClipper(),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.lightBlueAccent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -10,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: FluttermojiCircleAvatar(
                            backgroundColor: Colors.grey[200],
                            radius: 50,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: -70,
                            left: 0,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  Navigator.push(context, new MaterialPageRoute(builder: (context) => const NewPage()));
                                  // Add your edit profile logic here
                                },
                                icon: const FittedBox(child: Icon(Icons.edit)),
                              ),
                            )),
                      ],
                    ),
                    // CircleAvatar(
                    //   radius: 50,
                    //   child: Align(
                    //     alignment: Alignment.bottomRight,
                    //     child: Container(
                    //       width: 30,
                    //       height: 30,
                    //       decoration: BoxDecoration(
                    //         color: Theme.of(context).colorScheme.secondary.withOpacity(0.4),
                    //         shape: BoxShape.circle,
                    //       ),
                    //       child: IconButton(
                    //         onPressed: () {
                    //           // Add your edit profile logic here
                    //         },
                    //         icon: const FittedBox(child: Icon(Icons.edit)),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                Text(
                  'John Doe',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
} // Custom Clipper for the Background with Bezier Curve

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(size.width / 2, size.height * 0.9, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// Custom Button Widget for Profile Screen
class ProfileButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onTap;
  final bool isTop;
  final Widget? leading;

  const ProfileButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.isTop = false,
    this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: EdgeInsets.only(top: isTop ? 0 : 12),
        child: Row(
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 25,
                  color: Theme.of(context).colorScheme.outline,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            if (leading != null) const Spacer(),
            if (leading != null) leading!,
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: FluttermojiCircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                width: min(600, _width * 0.85),
                child: Row(
                  children: [
                    Text(
                      "Customize:",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Spacer(),
                    FluttermojiSaveWidget(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
                child: FluttermojiCustomizer(
                  scaffoldWidth: min(600, _width * 0.85),
                  autosave: false,
                  theme: FluttermojiThemeData(boxDecoration: const BoxDecoration(boxShadow: [BoxShadow()])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
