// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:event/screen/webview_screen.dart';
import 'package:flutter/material.dart';

import 'grihapusti.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: const Color.fromARGB(255, 238, 239, 239),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/inner-page-logo.png',
            height: 100,
            width: 200,
          ),
        ],
      ),
      actions: [
        PopupMenuButton(
            // add icon, by default "3 dot" icon
            icon: const ImageIcon(
              AssetImage("assets/images/menu-buttom.png"),
              color: Colors.blueAccent,
              size: 24,
            ),
            itemBuilder: (context) {
              return popup;
            },
            onSelected: (value) {
              if (value == 50) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url: 'https://ward06.lalitpurmun.gov.np/apps/apps-about/',
                  ),
                ));
              } else if (value == 1) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url:
                        'https://ward06.lalitpurmun.gov.np/apps/apps-about/apps-ward-profile/',
                  ),
                ));
              } else if (value == 2) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url:
                        'https://ward06.lalitpurmun.gov.np/apps/apps-about/apps-team/',
                  ),
                ));
              } else if (value == 3) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url:
                        'https://ward06.lalitpurmun.gov.np/apps/apps-ourworks/',
                  ),
                ));
              } else if (value == 4) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url:
                        'https://ward06.lalitpurmun.gov.np/apps/apps-applications/',
                  ),
                ));
              } else if (value == 5) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url:
                        'https://ward06.lalitpurmun.gov.np/apps/apps-publications/',
                  ),
                ));
              } else if (value == 6) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url: 'https://ward06.lalitpurmun.gov.np/apps/apps-norice/',
                  ),
                ));
              } else if (value == 7) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url:
                        'https://ward06.lalitpurmun.gov.np/apps/apps-norice/apps-blog/',
                  ),
                ));
              } else if (value == 8) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url:
                        'https://ward06.lalitpurmun.gov.np/apps/apps-norice/apps-gallery/',
                  ),
                ));
              } else if (value == 9) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url:
                        ' https://ward06.lalitpurmun.gov.np/apps/apps-norice/apps-videos/',
                  ),
                ));
              } else if (value == 10) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const webscreen(
                    url: 'https://ward06.lalitpurmun.gov.np/apps/apps-contact/',
                  ),
                ));
              } else if (value != 1 &&
                  value != 2 &&
                  value != 3 &&
                  value != 4 &&
                  value != 5 &&
                  value != 6 &&
                  value != 7 &&
                  value != 8 &&
                  value != 9 &&
                  value != 10 &&
                  value != 11) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Ghripusti(),
                ));
              }
            })
      ],
    );
  }

  List<PopupMenuItem<int>> get popup {
    return [
      const PopupMenuItem<int>(
        value: 50,
        // child: Text("हाम्र"),
        enabled: false,
        // ignore: sort_child_properties_last
        child: ListTile(
          title: Text("हाम्रो बारेमा"),
          trailing: dropdownones(),
        ),
      ),
      const PopupMenuItem<int>(
        value: 3,
        child: Text("\t\t\t\tहाम्रो काम"),
      ),
      const PopupMenuItem<int>(
        value: 4,
        child: Text("\t\t\t\tनिवेदन नमुना"),
      ),
      const PopupMenuItem<int>(
        value: 5,
        child: Text("\t\t\t\tप्रकाशन "),
      ),
      const PopupMenuItem<int>(
        value: 6,
        enabled: false,
        child: ListTile(
          title: Text("अपडेट"),
          trailing: dropdownone(),
        ),
      ),
      const PopupMenuItem<int>(
        value: 10,
        child: Text("\t\t\t\tसम्पर्क "),
      ),
    ];
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}

// ignore: camel_case_types
class dropdownone extends StatelessWidget {
  const dropdownone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    var _selectedMenu;
    return DropdownButton(
      value: _selectedMenu,
      onChanged: (value) {
        if (value == 6) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const webscreen(
              url: 'https://ward06.lalitpurmun.gov.np/apps/apps-norice/',
            ),
          ));
        } else if (value == 7) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const webscreen(
              url:
                  'https://ward06.lalitpurmun.gov.np/apps/apps-norice/apps-blog/',
            ),
          ));
        } else if (value == 8) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const webscreen(
              url:
                  'https://ward06.lalitpurmun.gov.np/apps/apps-norice/apps-gallery/',
            ),
          ));
        } else if (value == 9) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const webscreen(
              url:
                  ' https://ward06.lalitpurmun.gov.np/apps/apps-norice/apps-videos/',
            ),
          ));
        }
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const DropdownMenuItem(
          value: 6,
          child: Text("सूचना"),
        ),
        const DropdownMenuItem(
          value: 7,
          child: Text("समाचार"),
        ),
        const DropdownMenuItem(
          value: 8,
          child: Text("फोटो"),
        ),
        const DropdownMenuItem(
          value: 9,
          child: Text("भिडियो"),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class dropdownones extends StatelessWidget {
  const dropdownones({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    var _selectedMenu;
    return DropdownButton(
      value: _selectedMenu,
      onChanged: (value) {
        if (value == 0) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const webscreen(
              url: 'https://ward06.lalitpurmun.gov.np/apps/apps-about/',
            ),
          ));
        } else if (value == 1) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const webscreen(
              url:
                  'https://ward06.lalitpurmun.gov.np/apps/apps-about/apps-ward-profile/',
            ),
          ));
        } else if (value == 2) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const webscreen(
              url:
                  'https://ward06.lalitpurmun.gov.np/apps/apps-about/apps-team/',
            ),
          ));
        }
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const DropdownMenuItem(
          value: 0,
          child: Text("परिचय"),
        ),
        const DropdownMenuItem(
          value: 1,
          child: Text("वडाको विवरण"),
        ),
        const DropdownMenuItem(
          value: 2,
          child: Text("टोली"),
        ),
      ],
    );
  }
}
