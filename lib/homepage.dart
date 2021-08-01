import 'package:flutter/material.dart';
import 'package:flutter_insta/insta_icons_icons.dart';

class HomePage extends StatelessWidget {
  Widget instaStories(BuildContext context) {
    return Container(
      height: 95.0,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            if (i == 0) {
              return Column(
                children: <Widget>[
                  Container(
                    child: Stack(children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(2.0),
                        height: 75.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2.0),
                            borderRadius: BorderRadius.circular(75.0),
                            image: DecorationImage(
                                image: AssetImage("img/group.jpeg"))),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.blue),
                            child: Icon(Icons.add)),
                      ),
                    ]),
                    margin: EdgeInsets.only(right: 8.0),
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [
                              0.1,
                              0.25,
                              0.50,
                              0.75,
                              1
                            ],
                            colors: [
                              Color(0xfff09433),
                              Color(0xffe6683c),
                              Color(0xffdc2743),
                              Color(0xffcc2366),
                              Color(0xffbc1888),
                            ]),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(75.0)),
                  ),
                  Text("vamsi"),
                ],
              );
            } else {
              return Column(
                children: <Widget>[
                  Container(
                    child: Container(
                      margin: EdgeInsets.all(2.0),
                      height: 75.0,
                      width: 75.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(75.0),
                          image: DecorationImage(
                              image: AssetImage("img/photo.jpeg"))),
                    ),
                    margin: EdgeInsets.only(right: 8.0),
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [
                              0.1,
                              0.25,
                              0.50,
                              0.75,
                              1
                            ],
                            colors: [
                              Color(0xfff09433),
                              Color(0xffe6683c),
                              Color(0xffdc2743),
                              Color(0xffcc2366),
                              Color(0xffbc1888),
                            ]),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(75.0)),
                  ),
                  Text("vamsi"),
                ],
              );
            }
          }),
    );
  }

  Widget instaPost(BuildContext context) {
    return Column(children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.redAccent, width: 2.0),
                  borderRadius: BorderRadius.circular(50.0),
                  image:
                      DecorationImage(image: AssetImage("img/profile.jpeg"))),
            ),
          ),
          Text("vamsivurimi"),
          Spacer(),
          Icon(Icons.more_vert)
        ],
      ),
      Image(height: 400.0, width: 400.0, image: AssetImage("img/photo.jpeg")),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Icon(InstaIcons.heart),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Icon(InstaIcons.comment),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Icon(InstaIcons.mesagge),
            ),
          ),
          Spacer(),
          Container(
            child: Icon(InstaIcons.bookmark),
          )
        ],
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: Icon(InstaIcons.home),
                // ignore: deprecated_member_use
                title: Text("")),
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: Icon(InstaIcons.search),
                // ignore: deprecated_member_use
                title: Text("")),
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: Icon(InstaIcons.add),
                // ignore: deprecated_member_use
                title: Text("")),
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: Icon(InstaIcons.heart),
                // ignore: deprecated_member_use
                title: Text("")),
            BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: Icon(InstaIcons.profile),
                // ignore: deprecated_member_use
                title: Text("")),
          ]),
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(InstaIcons.photo),
        actions: <Widget>[
          Icon(InstaIcons.mesagge),
        ],
        title: Image(
          height: 50.0,
          image: AssetImage("img/insta.jpeg"),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          child: Container(
            color: Colors.grey[300],
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            instaStories(context),
            Divider(),
            instaPost(context),
            instaPost(context),
            instaPost(context)
          ]))
        ],
      ),
    );
  }
}
