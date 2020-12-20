import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: <StretchMode>[
                  StretchMode.zoomBackground
                ],
                title: Text('Mi niña ❤️'),
                background:  Opacity(
                  opacity: 0.8,
                  child: Image.asset(
                    'assets/ana.jpeg',
                    fit: BoxFit.cover,
                  ),
                )
              ),
              expandedHeight: 200,
              elevation: 2.5,
              backgroundColor: Color(0XFF5a8fbb),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: null,
                )
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.
              (context, index) => ListTile(title: Text('Item #$index')),
              // Builds 1000 ListTiles
              childCount: 1000,
            ),
            )
          ],
        )
    );
  }
}