import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_login.dart';
import 'package:adobe_xd/page_link.dart';

class XDRegister extends StatelessWidget {
  const XDRegister({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 391.0, start: -155.0),
            Pin(size: 389.0, start: -103.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xfffc5656),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 495.0, end: -173.0),
            Pin(size: 420.0, end: -195.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff939f5e),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 455.0, end: -112.0),
            Pin(size: 389.0, start: -116.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff5aa2f8),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.5, -0.292),
            child: SizedBox(
              width: 82.0,
              height: 20.0,
              child: Text(
                'Username',
                style: TextStyle(
                  fontFamily: 'STSong',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.507, -0.046),
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
          Align(
            alignment: Alignment(-0.381, 0.215),
            child: SizedBox(
              width: 149.0,
              height: 20.0,
              child: Text(
                'Confirm Password',
                style: TextStyle(
                  fontFamily: 'STSong',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.04, -0.185),
            child: Container(
              width: 257.0,
              height: 54.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 87.0, end: 86.0),
            Pin(size: 54.0, middle: 0.5444),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 87.0, end: 86.0),
            Pin(size: 54.0, middle: 0.6708),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.029, 0.515),
            child: SizedBox(
              width: 257.0,
              height: 54.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    duration: 0.5,
                    pageBuilder: () => XDLogin(
                      title: 'login',
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
                      alignment: Alignment(0.031, 0.0),
                      child: SizedBox(
                        width: 65.0,
                        height: 28.0,
                        child: Text(
                          'Submit',
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
            Pin(size: 257.0, middle: 0.5029),
            Pin(size: 54.0, end: 136.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: 0.5,
                  pageBuilder: () => XDLogin(
                    title: 'login',
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
        ],
      ),
    );
  }
}
