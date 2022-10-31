import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';

class XDPhone extends StatelessWidget {
  const XDPhone({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff050505),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 87.0, end: 86.0),
            Pin(size: 68.0, middle: 0.7766),
            child: Container(
              decoration: BoxDecoration(),
            ),
          ),
          Align(
            alignment: Alignment(0.003, 0.635),
            child: SizedBox(
              width: 89.0,
              height: 28.0,
              child: Text(
                'Testing…',
                style: TextStyle(
                  fontFamily: 'PingFang SC',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 33.0, end: 33.0),
            Pin(size: 455.0, start: 84.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/phone.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 32.0, end: 33.0),
            Pin(size: 54.0, end: 36.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: 0.5,
                  pageBuilder: () => XDHome(
                    title: 'home',
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
                    alignment: Alignment(0.003, 0.0),
                    child: SizedBox(
                      width: 64.0,
                      height: 28.0,
                      child: Text(
                        'Cancel',
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
        ],
      ),
    );
  }
}
