import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:porto_graphy/gobackfab.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(4, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 1),
];

List<Widget> _tiles = const <Widget>[
  const _PortfolioImage(0, 'https://picsum.photos/200/300/?random'),
  const _PortfolioImage(1, 'https://picsum.photos/201/300/?random'),
  const _PortfolioImage(2, 'https://picsum.photos/202/300/?random'),
  const _PortfolioImage(3, 'https://picsum.photos/203/300/?random'),
  const _PortfolioImage(4, 'https://picsum.photos/204/300/?random'),
  const _PortfolioImage(5, 'https://picsum.photos/205/300/?random'),
  const _PortfolioImage(6, 'https://picsum.photos/206/300/?random'),
  const _PortfolioImage(7, 'https://picsum.photos/207/300/?random'),
  const _PortfolioImage(8, 'https://picsum.photos/208/300/?random'),
  const _PortfolioImage(9, 'https://picsum.photos/209/300/?random'),
  const _PortfolioImage(10, 'https://picsum.photos/210/300/?random'),
  const _PortfolioImage(11, 'https://picsum.photos/211/300/?random'),
  const _PortfolioImage(12, 'https://picsum.photos/212/300/?random'),
];

var imageDetail = [
  {
    'title': 'A Beatiful image 1',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'My favourite image 2',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'A Beatiful image 3',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'My favourite image 4',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'A Beatiful image 5',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'My favourite image 6',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'A Beatiful image 7',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'My favourite image 8',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'My favourite image 9',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'A Beatiful image 10',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'My favourite image 11',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'A Beatiful image 12',
    'detail': 'this image taken on blablablablabla',
  },
  {
    'title': 'My favourite image 13',
    'detail': 'this image taken on blablablablabla',
  },
];

class PortfolioImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var axisTileCount = 4;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      axisTileCount = 8;
    }
    return new Scaffold(
      body: SafeArea(
        child: new StaggeredGridView.count(
          crossAxisCount: axisTileCount,
          staggeredTiles: _staggeredTiles,
          children: _tiles,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
        ),
      ),
      floatingActionButton: GoBackButton(),
    );
  }
}

class _PortfolioImage extends StatelessWidget {
  const _PortfolioImage(this.index, this.gridImage);

  final index;
  final gridImage;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: Colors.white,
      elevation: 3.0,
      child: new GestureDetector(
        onTap: () {
          _showDetail(context);
        },
        child: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new NetworkImage(gridImage),
              fit: BoxFit.cover,
            ),
            borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }

  Future<void> _showDetail(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          title: new Text(imageDetail[index]['title']),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(gridImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                        new BorderRadius.all(const Radius.circular(10.0)),
                  ),
                ),
                Text(imageDetail[index]['detail']),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
