import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class searchPage extends StatelessWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        SizedBox(height: 80,),
      Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: TextField(
          style: TextStyle(height: 0.5),
          decoration: InputDecoration(
            labelText: 'Search',
            border: OutlineInputBorder(),

          ),
        ),

      ),
      Expanded(
        child: StaggeredGridView.count(
            crossAxisCount: 2,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          staggeredTiles: [
            StaggeredTile.count(1,1),
            StaggeredTile.count(1,2),

            StaggeredTile.count(1,1),

            StaggeredTile.count(2,1),
            StaggeredTile.count(1,1),
            StaggeredTile.count(1,1),
            StaggeredTile.count(1,1),
            StaggeredTile.count(1,1),


          ],
          children: [
            photoList('images/dbs.webp'),
            photoList('images/jjk.webp'),
            photoList('images/myav.jpg'),
            photoList('images/bnha1.png'),
            photoList('images/tokyo.jpg'),
            photoList('images/tokyo1.jpg'),
            photoList('images/dp3.jpg'),
            photoList('images/dp2.jpg'),

          ],

        ),
      )

      ]
      )
    );
  }
  Widget photoList(String imgPath)
  {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imgPath)
        )
      ),
    );

  }
}
