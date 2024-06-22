import 'dart:ffi';

import 'package:flutter/material.dart';
import '../data.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyHomeState();
  }
}

class _MyHomeState extends State<HomePage> {

  List<String> _locations = ['China', 'India', 'Spain', 'USA'];
  int _activeLocation = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
        body: SafeArea(
          top: true,
          left: false,
          right: false,
          bottom: true,
          minimum: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.07, 0,
              MediaQuery.of(context).size.width * 0.07, 0),
          child: _mainColumn(context),
        )
    );
  }

  Widget _mainColumn(BuildContext _context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
            Container(
              height: 39,
              width: 144,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/discover_logo.png'),
                  ),
              ),
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 35,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(_context).size.height * 0.03,
              bottom: MediaQuery.of(_context).size.height * 0.03),
          child: _locationsBar(_context),
        ),
        _articlesList(_context),
      ],
    );
  }

  Widget _locationsBar(BuildContext _context) {
    return Container(
      height: MediaQuery.of(_context).size.height * 0.065,
      decoration: BoxDecoration(
        color: Color.fromRGBO(69, 69, 69, 1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: _locations.map((l) {
          bool _isActive = _locations[_activeLocation] == l ? true : false;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(l,
                style: TextStyle(fontSize: 18,
                    color: _isActive ? Colors.white : Colors.white,
                    fontFamily: 'Montserrat'),
              ),
              _isActive ? Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
                height: 6,
                width: 30,
              ) : Container(),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _articlesList(BuildContext _context) {
    return Expanded(
      child: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return Stack(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(_context).size.height * 0.05),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                    height: MediaQuery.of(_context).size.height * 0.30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(articles[index].image),
                      ),
                      boxShadow: [ BoxShadow(
                        color: Colors.black38,
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 6),
                      ),
                      ],
                    ),
                    child: _articleInfoColumn(context, index),
                  ),),
              ),
             Positioned(
               bottom: 20,
               left: MediaQuery.of(context).size.width * 0.10,
               child:  _socialInfoContainer(_context, index),
             ),
            ],
          );
        },
      ),
    );
  }

  Widget _articleInfoColumn(BuildContext _context, int _index){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[Padding(
          padding: EdgeInsets.fromLTRB(10, 12, 30, MediaQuery.of(context).size.width * 0.05),
        child: _authorInfoRow(_context, _index),
      ),
        Padding(
            padding: EdgeInsets.fromLTRB(30, MediaQuery.of(context).size.height * 0.05, 30, 0),
        child: _detailInfoRow(_context, _index),
        )
      ],
    );
  }

  Widget _authorInfoRow(BuildContext _context, int _index){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(articles[_index].profile),
                ),
                shape: BoxShape.circle,
                border: Border.all(
                    color: Colors.white, width: 2),
              ),
            ), Padding(
              padding: EdgeInsets.only(left: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(articles[_index].author,
                  style: TextStyle(color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                Text('3 hours ago',
                  style: TextStyle(color: Colors.white60,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Montserrat'),
                ),
              ],
            ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20
            ), Padding(
              padding: EdgeInsets.only(top: 5),
            child: Icon(
                Icons.bookmark,
                color: Colors.white,
                size: 20 ),
            ),
          ],
        )
      ],
    );
  }

  Widget _detailInfoRow(BuildContext _context, int _index){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.white ,
          child: Icon(
            Icons.play_arrow_sharp,
            color:  Colors.redAccent,
            size: 30,
          ),
        ),
        Padding(
            padding:EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width:  MediaQuery.of(context).size.width * 0.40,
              child: Text(articles[_index].title,
                maxLines: 1,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            Text(articles[_index].location,
              style: TextStyle(
                  color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400),
              ),
            _ratingWidget(_context, _index),
          ],
        ),),
      ],
    );
  }

  Widget _socialInfoContainer(BuildContext _context, int _index){
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.favorite_border,
                color: Colors.redAccent,
              ),
              Text(
                articles[_index].likes.toString(),
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.comment,
                color: Colors.grey,
              ),
              Text(
                articles[_index].comments.toString(),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.share,
                color: Colors.grey,
              ),
              Text(
                articles[_index].shares.toString(),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
  Widget _ratingWidget(BuildContext _contxt, int _index){
    return Row(
      children:
      List<Widget>.generate(5, (_currentIndex){
        double _fillAmount = articles[_index].rating - _currentIndex;
        Icon _starIcon;
        if (_fillAmount >= 1){
          _starIcon = Icon(Icons.star, color: Colors.amberAccent,size: 18);
        }else if(_fillAmount >= 0.5){
          _starIcon = Icon(Icons.star_half, color: Colors.amberAccent,size: 18);
        }else{
          _starIcon = Icon(Icons.star_border , color: Colors.amberAccent,size: 18);
        }
        return _starIcon;
        },
      ),
    );
  }
}
