import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_phone.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_history.dart';
import './xd_help.dart';

class XDHome extends StatelessWidget {
  const XDHome({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
            Pin(start: 32.0, end: 32.0),
            Pin(size: 310.0, middle: 0.253),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/chart.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.04, 0.185),
            child: SizedBox(
              width: 257.0,
              height: 54.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    duration: 0.5,
                    pageBuilder: () => XDPhone(
                      title: 'Home',
                    ),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff5aa2f8),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffdbdbdb)),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.036, 0.0),
                      child: SizedBox(
                        width: 188.0,
                        height: 28.0,
                        child: Text(
                          'Emotion recognition',
                          style: TextStyle(
                            fontFamily: 'PingFang SC',
                            fontSize: 20,
                            color: const Color(0xffffffff),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.04, 0.364),
            child: SizedBox(
              width: 257.0,
              height: 54.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    duration: 0.5,
                    pageBuilder: () => XDHistory(
                      title: 'history',
                    ),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffd9d4d4),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffdbdbdb)),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.008, 0.0),
                      child: SizedBox(
                        width: 130.0,
                        height: 28.0,
                        child: Text(
                          'History Result',
                          style: TextStyle(
                            fontFamily: 'PingFang SC',
                            fontSize: 20,
                            color: const Color(0xff707070),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 185.0, middle: 0.502),
            Pin(size: 28.0, start: 100.0),
            child: Text(
              'Current Test Result',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.006, 0.544),
            child: SizedBox(
              width: 257.0,
              height: 54.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    duration: 0.5,
                    pageBuilder: () => XDHelp(
                      title: 'help',
                    ),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffd9d4d4),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffdbdbdb)),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.005, 0.0),
                      child: SizedBox(
                        width: 42.0,
                        height: 28.0,
                        child: Text(
                          'Help',
                          style: TextStyle(
                            fontFamily: 'PingFang SC',
                            fontSize: 20,
                            color: const Color(0xff707070),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
