import 'package:flutter/material.dart';
import 'package:telegram_clone/contants.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      home: Scaffold(
        drawer: Drawer(
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
                        CircleAvatar(
                          radius: 30.0, backgroundImage: AssetImage('assets/profile.jpg')
                        ),
                        IconButton(icon: Icon(Icons.wb_sunny, color: Colors.white,), onPressed: null)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoTextDrawer(),
                        IconButton(icon: Icon(Icons.keyboard_arrow_down, color: Colors.white,), onPressed: null)
                      ],
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: colorPrimary,
                ),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(
                  Icons.group_outlined,
                  size: 28.0,
                  color: Colors.black38,
                ),
                title: Text(
                  'Grupos',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87
                  )),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(
                  Icons.lock_outline,
                  size: 28.0,
                  color: Colors.black38,
                ),
                title: Text(
                  'Nuevo chat secreto',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87
                  )),
              ),
              ListTile(
                onTap: (){},
                leading: Icon(
                  Icons.group_outlined,
                  size: 28.0,
                  color: Colors.black38,
                ),
                title: Text(
                  'Nuevo canal',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87
                  )),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 2.5,
          backgroundColor: colorPrimary,
          title: Text('Telegram'),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null,
            )
          ],
        ),
        body: ListView.separated(
            itemCount: 5,
            separatorBuilder: (context, index) => Divider(
                  height: 0.0,
                  color: Colors.black12,
                  indent: 95.0,
                ),
            itemBuilder: (context, index) => ListChat()),
        floatingActionButton: FloatingActionButton(
            backgroundColor: colorPrimary,
            onPressed: null,
            child: Icon(Icons.edit)),
      ),
    );
  }
}

class ListChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ListTile(
        onTap: (){},
        leading: CircleAvatar(
            radius: 30.0, backgroundImage: AssetImage('assets/profile.jpg')),
        title: Text(
          'Diego Rambao',
          style: TextStyle(fontSize: 19.0, color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        subtitle: Text('I love Flutter! ❤️',
            style: TextStyle(fontSize: 18.0, color: Colors.grey)),
        trailing: Column(
          children: [
            Text(
              '11:55 AM',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 3.0,
            ),
            BuildUnreadMessages()
          ],
        ),
      ),
    );
  }
}

class BuildUnreadMessages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 22.0,
      height: 22.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorPrimary,
      ),
      child: Text('5', style: TextStyle(color: Colors.white)),
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
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 18.0
          ),
        ),
        SizedBox(height: 5.0,),
        Text(
          '+57 (300) 308-6333',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 16.0
          ),
        )
      ],
    );
  }
}
