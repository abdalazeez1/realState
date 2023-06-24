import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  final _commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            20.verticalSpace,
            const Text(
              'comment ',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            10.verticalSpace,
            const SizedBox(
              height: 10,
              width: double.infinity,
              child: Divider(
                color: Colors.black,
              ),
            ),
          ],
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 6),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/monier.jpg'),
                ),
                10.horizontalSpace,
                Container(
                  width: 140,
                  height: 60,
                  margin: REdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(31, 123, 123, 123),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 12,
                      top: 9,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mounir Anas',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Perfctoo ')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )),
        Container(
          height: 80,
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, bottom: 9),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white,
                ),
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Add comment ... ',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(32.0)),
                      ),
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                14.horizontalSpace,
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/images/send.svg',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
