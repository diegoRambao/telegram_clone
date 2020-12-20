import 'package:flutter/material.dart';
import 'package:telegram_clone/components/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerMenu(),
        appBar: AppBar(
          elevation: 2.5,
          backgroundColor: Color(0XFF517da2),
          title: Text('HappyGram'),
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
            backgroundColor: Color(0XFF66a9e0),
            onPressed: null,
            child: Icon(Icons.edit)),
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
            radius: 30.0, backgroundImage: AssetImage('assets/profile.jpeg')),
        title: Text(
          'Diego Rambao',
          style: TextStyle(fontSize: 19.0, color: Colors.black87, fontWeight: FontWeight.w600),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Text('I love Flutter! ❤️',
              style: TextStyle(fontSize: 18.0, color: Color(0XFFb2b2b2))),
        ),
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
        color: Color(0xFFc7c8cc),
      ),
      child: Text('5', style: TextStyle(color: Colors.white)),
    );
  }
}

