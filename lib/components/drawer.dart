import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'profile');
                      },
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/profile.jpeg')
                      ),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.wb_sunny,
                          color: Colors.white,
                        ),
                        onPressed: null)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InfoTextDrawer(),
                    IconButton(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                        onPressed: null)
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Color(0XFF5a8fbb),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.group_outlined,
              size: 28.0,
              color: Colors.black38,
            ),
            title: Text('Grupos',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87)),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.lock_outline,
              size: 28.0,
              color: Colors.black38,
            ),
            title: Text('Nuevo chat secreto',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87)),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'options');
            },
            leading: Icon(
              Icons.comment,
              size: 28.0,
              color: Colors.black38,
            ),
            title: Text('Opciones',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87
              )
            ),
          ),
        ],
      ),
    );
  }
}

class InfoTextDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Diego Rambao',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18.0),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          '+57 (300) 308-6333',
          style: TextStyle(color: Colors.white70, fontSize: 16.0),
        )
      ],
    );
  }
}
