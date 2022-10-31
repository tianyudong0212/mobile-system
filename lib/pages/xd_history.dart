import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDHistory extends StatelessWidget {
  const XDHistory({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result History'),
        actions: [
          PopupMenuButton(
              // add icon, by default "3 dot" icon
              // icon: Icon(Icons.book)
              itemBuilder: (context) {
            return [
              const PopupMenuItem<int>(
                value: 0,
                child: Text("Home"),
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text("User Information"),
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text("Reset Password"),
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text("Result History"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, '/');
            } else if (value == 1) {
              Navigator.pushNamed(context, '/user');
            } else if (value == 2) {
              Navigator.pushNamed(context, '/reset');
            } else if (value == 3) {
              Navigator.pushNamed(context, '/history');
            }
          }),
        ],
      ),
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 44.0, end: 30),
            Pin(size: 28.0, start: 31.0),
            child: const Text(
              'Date',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 20,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 59.0, start: 35.0),
            Pin(size: 28.0, start: 31.0),
            child: const Text(
              'Result',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 20,
                color: Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: 28.0),
            Pin(size: 106.0, start: 70.0),
            child: Stack(
              children: <Widget>[
                const Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 110.0,
                    height: 28.0,
                    child: Text(
                      '2022-10.30',
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 136.0,
                    height: 28.0,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'PingFang SC',
                          fontSize: 20,
                          color: Color(0xfffc0000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Happy ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ':   85%',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 135.0,
                    height: 28.0,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'PingFang SC',
                          fontSize: 20,
                          color: Color(0xff5a8be6),
                        ),
                        children: [
                          TextSpan(
                            text: 'None   ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ':   15%',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 127.0, start: 1.0),
                  Pin(size: 28.0, end: 0.0),
                  child: const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: Color(0xff789613),
                      ),
                      children: [
                        TextSpan(
                          text: 'Sad',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '     ',
                          style: TextStyle(
                            color: Color(0xff5a8be6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ':   0%',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                const Align(
                  alignment: Alignment(0.637, -0.282),
                  child: SizedBox(
                    width: 53.0,
                    height: 28.0,
                    child: Text(
                      '22:00',
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 32.0, end: 31.0),
            Pin(size: 106.0, start: 200),
            child: Stack(
              children: <Widget>[
                const Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 110.0,
                    height: 28.0,
                    child: Text(
                      '2022-10.30',
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 136.0,
                    height: 28.0,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'PingFang SC',
                          fontSize: 20,
                          color: Color(0xfffc0000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Happy ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ':   80%',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 135.0,
                    height: 28.0,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'PingFang SC',
                          fontSize: 20,
                          color: Color(0xff5a8be6),
                        ),
                        children: [
                          TextSpan(
                            text: 'None   ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ':   15%',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 127.0, start: 1.0),
                  Pin(size: 28.0, end: 0.0),
                  child: const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: Color(0xff7e9531),
                      ),
                      children: [
                        TextSpan(
                          text: 'Sad',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '     ',
                          style: TextStyle(
                            color: Color(0xff5a8be6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ':   5%',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                const Align(
                  alignment: Alignment(0.621, -0.282),
                  child: SizedBox(
                    width: 50.0,
                    height: 28.0,
                    child: Text(
                      '21:00',
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 35.0, end: 28.0),
            Pin(size: 106.0, start: 330),
            child: Stack(
              children: <Widget>[
                const Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 110.0,
                    height: 28.0,
                    child: Text(
                      '2022-10.30',
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 135.0,
                    height: 28.0,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'PingFang SC',
                          fontSize: 20,
                          color: Color(0xfffc0000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Happy ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ':   79%',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 135.0,
                    height: 28.0,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'PingFang SC',
                          fontSize: 20,
                          color: Color(0xff5a8be6),
                        ),
                        children: [
                          TextSpan(
                            text: 'None   ',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ':   15%',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 127.0, start: 1.0),
                  Pin(size: 28.0, end: 0.0),
                  child: const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: Color(0xff889949),
                      ),
                      children: [
                        TextSpan(
                          text: 'Sad',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: '     ',
                          style: TextStyle(
                            color: Color(0xff5a8be6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ':   6%',
                          style: TextStyle(
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                        TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
                Align(
                  alignment: Alignment(0.637, -0.282),
                  child: SizedBox(
                    width: 53.0,
                    height: 28.0,
                    child: Text(
                      '20:45',
                      style: TextStyle(
                        fontFamily: 'PingFang SC',
                        fontSize: 20,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
