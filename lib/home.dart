import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize=MediaQuery.of(context).size;
    return new ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) =>index == 0?
      new SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(children: <Widget>[
              IconButton(icon: Icon(Icons.notifications_active),
              onPressed: (){},
              color: Colors.blue,),
              Text('Notifications')
            ],),
            Column(children: <Widget>[
              IconButton(icon: Icon(Icons.group),
              onPressed: (){},
              color: Colors.blue,),
              Text('Following')
            ],)

          ],
        ),
        height: deviceSize.height *0.09,
      ):Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 40,
                      width: 40,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(image: AssetImage('assets/pic3.jpeg')),
                      ),
                    ),
                    new SizedBox(
                      width: 10,
                    ),
                    new Text('Aviel_19',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                  ],
                ),
                new IconButton(icon: Icon(Icons.more_vert), onPressed:(){}),
              ],
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Image.asset('assets/pic2.jpeg',
              fit: BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new IconButton(icon:Icon(
                      FontAwesomeIcons.thumbsUp,), onPressed: (){}),
                    new IconButton(icon:Icon(
                      FontAwesomeIcons.solidCommentDots,), onPressed: (){}),
                    new IconButton(icon:Icon(
                      FontAwesomeIcons.shareAlt,), onPressed: (){}),

                  ],
                ),
                new IconButton(icon:Icon(
                  FontAwesomeIcons.infoCircle,), onPressed: (){}),
              ],
            ),),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Liked by Jackline and 345 others',
              style: TextStyle(fontWeight: FontWeight.bold),),),
          Padding(padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 40,
                  width: 40,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/pic1.jpeg')
                    ),
                  ),
                ),
                new SizedBox(width: 10.0,),
                Expanded(child: new TextField(
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment ...",
                  ),
                )),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('1 Day Ago',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),)
              ],
            ),)
        ],
      ),

    );
  }
}