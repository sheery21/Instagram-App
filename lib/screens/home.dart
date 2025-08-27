import 'package:flutter/material.dart';
import 'package:flutter_11_start/widgets/uihelper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final arrContent = [
    {
      'img':'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
      "name":"Your Story"

    },
    {
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_2oII-AssPFNOvcLQ6ecJ6ZWQlUbKU3j8w&s',
      'name': 'karennne'
    },
    {
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm2-IiCQnnEHH1dk5HN2K60xrv8Wyu8VRW7Q&s',
      'name': 'zackjohn30'
    },
    {
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ1ipeQbFseUM_GzxwMoQj45w9HtAnu4eu5w&s',
      'name': 'kieron_don'
    },
    {
      'img':'https://burst.shopifycdn.com/photos/a-bubbling-cloud-of-rich-pink-and-yellow.jpg?width=373&format=pjpg&exif=0&iptc=0',
      'name': 'craig__820'
    },{
      'img':'https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=',
      "name":"Your Story"

    },
    {
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_2oII-AssPFNOvcLQ6ecJ6ZWQlUbKU3j8w&s',
      'name': 'karennne'
    },
    {
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm2-IiCQnnEHH1dk5HN2K60xrv8Wyu8VRW7Q&s',
      'name': 'zackjohn'
    },
    {
      'img':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ1ipeQbFseUM_GzxwMoQj45w9HtAnu4eu5w&s',
      'name': 'kieron_d'
    },
    {
      'img':'https://burst.shopifycdn.com/photos/a-bubbling-cloud-of-rich-pink-and-yellow.jpg?width=373&format=pjpg&exif=0&iptc=0',
      'name': 'craig_'
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF121212),
        toolbarHeight: 75,
        leading: UiHelper.CustomImage(imgUrl: 'camra_icon.png'),
        title: UiHelper.CustomImage(imgUrl: 'insta_Logo.png'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgUrl: 'IGTV.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgUrl: 'Messanger.png'),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(children: [

          Container(
            height: 100,
            child: ListView.builder(  scrollDirection: Axis.horizontal, itemCount: arrContent.length, itemBuilder: (context, index) {
              return   Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(arrContent[index]['img'].toString()),
                  ),
                  SizedBox( height: 5,),
                  Text(arrContent[index]['name'].toString() , style: TextStyle(color: Colors.white , fontSize: 12),),
                ],),
              );
            },),
          ),
          SizedBox(height: 10.0,),
          Container(
            height: 54,
            width: MediaQuery.of(context).size.width/1.1,
            child:  ListTile(
              leading: UiHelper.CustomImage(imgUrl: 'Oval01.png'),
              title: Row(children: [
                Text('joshua_l' ,style: TextStyle(color: Colors.white , fontSize: 14,fontWeight: FontWeight.w700),),
                SizedBox(width: 5,),
                UiHelper.CustomImage(imgUrl: 'blueStar.png' )
              ],),
              subtitle: Text('Tokyo, Japan',style: TextStyle(color: Color(0XFFF9F9F9) , fontSize: 12)),
              trailing: UiHelper.CustomImage(imgUrl: 'MoreIcon.png'),
            )
          )

        ],),
      ),
    );
  }
}
