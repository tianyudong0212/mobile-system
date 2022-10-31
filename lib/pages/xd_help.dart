import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';

import 'xd_home.dart';

class XDHelp extends StatelessWidget {
  const XDHelp({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 90.0, start: 29.0),
            Pin(size: 59.0, start: 49.0),
            child: Text(
              'Help',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 42,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 45.0),
            Pin(size: 168.0, middle: 0.5851),
            child: Text(
              '1. Click Auto Test Button to open your\nPhone’s camera\n\n2. Waiting for a moment\n\n3. Get the Result',
              style: TextStyle(
                fontFamily: 'PingFang SC',
                fontSize: 20,
                color: const Color(0xff000000),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 36.0),
            Pin(size: 54.0, end: 53.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: 0.5,
                  pageBuilder: () => XDHome(title: 'home'),
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
                    alignment: Alignment(-0.003, 0.0),
                    child: SizedBox(
                      width: 46.0,
                      height: 28.0,
                      child: Text(
                        'Back',
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
          Pinned.fromPins(
            Pin(start: 19.0, end: 18.0),
            Pin(size: 284.0, start: 125.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/help.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
