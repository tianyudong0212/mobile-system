import 'package:fer_app/pages/xd_login.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_home.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_reset.dart';

class XDUser extends StatelessWidget {
  const XDUser({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Information'),
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
            } else if (value == 2) {
              Navigator.pushNamed(context, '/history');
            }
          }),
        ],
      ),
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 87.0, end: 86.0),
            Pin(size: 68.0, middle: 0.4688),
            child: Container(
              decoration: BoxDecoration(),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 31.0),
            Pin(size: 102.0, start: 109.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 100.0, start: 5.0),
                  Pin(size: 20.0, start: 0.0),
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
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 54.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 160.0, start: 5.0),
                  Pin(size: 20.0, middle: 0.7927),
                  child: Text(
                    'Your User Name',
                    style: TextStyle(
                      fontFamily: 'STSong',
                      fontSize: 20,
                      color: const Color(0xff707070),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 28.0),
            Pin(size: 102.0, middle: 0.3),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 40.0, start: 5.0),
                  Pin(size: 28.0, start: 20.0),
                  child: Text(
                    'Age',
                    style: TextStyle(
                      fontFamily: 'STSong',
                      fontSize: 20,
                      color: const Color(0xff707070),
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 54.0, start: 160.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 30.0, start: 5.0),
                  Pin(size: 20.0, middle: 0.7927),
                  child: Text(
                    '22',
                    style: TextStyle(
                      fontFamily: 'STSong',
                      fontSize: 20,
                      color: const Color(0xff707070),
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 31.0),
            Pin(size: 54.0, middle: 0.4692),
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
                    alignment: Alignment(-0.062, 0.0),
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
          Pinned.fromPins(
            Pin(start: 29.0, end: 29.0),
            Pin(size: 54.0, middle: 0.574),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: 0.5,
                  pageBuilder: () => const XDReset(
                    title: 'reset password',
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
                  const Center(
                    child: SizedBox(
                      width: 160.0,
                      height: 28.0,
                      child: Text(
                        'Resset Password',
                        style: TextStyle(
                          fontFamily: 'PingFang SC',
                          fontSize: 20,
                          color: Color(0xff707070),
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
              Pin(start: 44.0, end: 52.0), Pin(size: 54.0, end: 40.0),
              child: PageLink(
                links: [
                  PageLinkInfo(
                    duration: 0.5,
                    pageBuilder: () => const XDLogin(
                      title: 'login',
                    ),
                  ),
                ],
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffea2828),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffdbdbdb)),
                      ),
                    ),
                    const Align(
                      alignment: Alignment(0.003, 0.0),
                      child: SizedBox(
                        width: 39.0,
                        height: 28.0,
                        child: Text(
                          'Quit',
                          style: TextStyle(
                            fontFamily: 'PingFang SC',
                            fontSize: 20,
                            color: Color(0xffffffff),
                          ),
                          softWrap: false,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
