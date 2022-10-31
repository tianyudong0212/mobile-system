import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_register.dart';

class XDLogin extends StatelessWidget {
  const XDLogin({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 455.0, end: -240.0),
            Pin(size: 389.0, end: -259.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff959f66),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 455.0, end: -159.0),
            Pin(size: 389.0, start: -141.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff5aa2f8),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.484, -0.241),
            child: SizedBox(
              width: 93.0,
              height: 28.0,
              child: Text(
                'Username',
                style: TextStyle(
                  fontFamily: 'PingFang SC',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.507, 0.022),
            child: SizedBox(
              width: 77.0,
              height: 20.0,
              child: Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'STSong',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 87.0, end: 86.0),
            Pin(size: 54.0, middle: 0.4385),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 87.0, end: 86.0),
            Pin(size: 54.0, middle: 0.5843),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.006, 0.36),
            child: SizedBox(
              width: 257.0,
              height: 54.0,
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
                      alignment: Alignment(-0.005, 0.0),
                      child: SizedBox(
                        width: 52.0,
                        height: 28.0,
                        child: Text(
                          'Login',
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
          Align(
            alignment: Alignment(0.006, 0.515),
            child: SizedBox(
              width: 257.0,
              height: 54.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    duration: 0.5,
                    pageBuilder: () => XDRegister(title: 'register'),
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
                    Center(
                      child: SizedBox(
                        width: 77.0,
                        height: 28.0,
                        child: Text(
                          'Register',
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
            Pin(size: 470.0, start: -155.0),
            Pin(size: 389.0, start: -112.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfffc5656),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
