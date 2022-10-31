import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_user.dart';
import 'package:adobe_xd/page_link.dart';

class XDReset extends StatelessWidget {
  const XDReset({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
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
            Pin(size: 77.0, start: 49.0),
            Pin(size: 20.0, start: 111.0),
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
          Pinned.fromPins(
            Pin(size: 119.0, start: 49.0),
            Pin(size: 20.0, middle: 0.2741),
            child: Text(
              'New Password',
              style: TextStyle(
                fontFamily: 'STSong',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 47.0, end: 45.0),
            Pin(size: 54.0, middle: 0.1845),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 47.0, end: 45.0),
            Pin(size: 54.0, middle: 0.3462),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 51.0, end: 45.0),
            Pin(size: 54.0, middle: 0.467),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: 0.5,
                  pageBuilder: () => XDUser(
                    title: 'user',
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
                    alignment: Alignment(-0.063, 0.0),
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
            Pin(start: 51.0, end: 45.0),
            Pin(size: 54.0, middle: 0.5934),
            child: PageLink(
              links: [
                PageLinkInfo(
                  duration: 0.5,
                  pageBuilder: () => XDUser(
                    title: 'user',
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
                    alignment: Alignment(-0.007, 0.0),
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
