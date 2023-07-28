// import 'package:avatar_view/avatar_view.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../constants/theme/colors.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  final List<Map<String, dynamic>> _allUsers = [
    {

      "id": 1,
      "name": "Photomaniac",
      "msg": "are there out_of stack photos\nGofuffle we ",
      "image": "https://cdn-icons-png.flaticon.com/512/3135/3135823.png",
    },
    {
      "id": 2,
      "name": "Nunacademy",
      "msg": "Hlo ",
      "image": "https://cdn-icons-png.flaticon.com/512/219/219969.png",
    },
    {
      "id": 3,
      "name": "Fun Splash",
      "msg": "Co-founder & CEO @ ",
      "image": "https://i.pinimg.com/736x/27/cd/7f/27cd7f91d768f1e85aa8d7484f303fae.jpg",
    },

    {
      "id": 4,
      "name": "Mitesh Raj",
      "msg": "Co-founder & CEO @ ",
      "image": "https://thumbs.dreamstime.com/b/flat-male-avatar-image-beard-hairstyle-businessman-profile-icon-vector-179285629.jpg",
    },
    {
      "id": 5,
      "name": "Pizza Club",
      "msg": "Co-founder & CEO @ ",
      "image": "https://cdn5.vectorstock.com/i/1000x1000/72/59/female-avatar-profile-icon-round-african-american-vector-18307259.jpg",
    },
    {
      "id": 6,
      "name": "Fun Trip",
      "msg": "Thank you for using my words in your work",
      "image": "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
    },
    {
      "id": 7,
      "name": "Tedbus",
      "msg": "the Blood and became paralyzed do you  ",
      "image": "https://cdn-icons-png.flaticon.com/512/146/146035.png",
    },
    {
      "id": 8,
      "name": "Raja Ram",
      "msg": "Co-founder & CEO @ ",
      "image": "https://w7.pngwing.com/pngs/4/736/png-transparent-female-avatar-girl-face-woman-user-flat-classy-users-icon.png",
    },
    {
      "id": 9,
      "name": "Book my spa",
      "msg": "Co-founder & CEO @ ",
      "image": "https://cdn0.iconfinder.com/data/icons/social-messaging-ui-color-shapes/128/user-male-circle-blue-512.png",
    },
    {
      "id": 10,
      "name": "Becky",
      "msg": "grew up and worked a desk job he'd be a Cog in the",
      "image": "https://i.pinimg.com/originals/a6/58/32/a65832155622ac173337874f02b218fb.png",
    },
  ];
  // List<String> image =[
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  //   'assets/image/img.png',
  // ];
  // List<String> name=[
  //   'John Wick',
  //   'Tony Sack',
  //   'Arthur',
  //   'Alexander',
  //   'Peggy',
  //   'Adam',
  //   'Emily',
  //   'Arthur',
  //   'Alexander',
  //   'Peggy',
  //   'Adam',
  //   'Emily',
  //
  // ];
  // List<String> msg=[
  //   'hi',
  //   'hloo',
  //   'good morning',
  //   'hai',
  //   'ok',
  //   'Can we talk now',
  //   'hi',
  //   'hloo',
  //   'ok',
  //   'Can we talk now',
  //   'hi',
  //   'hloo',
  //
  // ];
  //
  // List<String> _foundusers=[];
  // @override
  // void initState() {
  //   _foundusers=name;
  //   super.initState();
  // }
  // void _runFilter(String enterKeyword){
  //   List<String>result= [];
  //   if(enterKeyword.isEmpty){
  //     result=name;
  //   }else{
  //     result=name.where((user) => user["name"].toLowerCase().contains(enterKeyword.toLowerCase())).toList();
  //   }
  // }


  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();

    }

    setState(() {
      _foundUsers = results;
    });
  }


  @override
  Widget Chat(){
    return
      Padding(
        padding: const EdgeInsets.only(top: 15),
        child:
        ListView.builder(
            itemCount: _foundUsers.length,
            itemBuilder: ( context,index) {
              return Container(decoration:BoxDecoration(border: Border.all(color: Colors.black,width: 0),) ,
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ListTile(
                    title: Text(_foundUsers[index]['name'],style: TextStyle(color:Color(0XFF1EBEA5),fontSize: 15,fontWeight: FontWeight.w700 )),
                    subtitle: Text(_foundUsers[index]['msg'], style: TextStyle(color:Color(0XFF545479),fontSize: 13,fontWeight: FontWeight.w400 )),
                    leading:
                    CircleAvatar(
                      radius: 27,
                      backgroundImage:NetworkImage(_foundUsers[index]['image']),
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text('10 minutes ago',style: TextStyle(color:Color(0Xff545479) )),
                    ),
                  ),
                ),
              );
            }
        ),
      );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0XFFE9FEF8) ,
      appBar: AppBar(
        toolbarHeight: 105,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0XFFE9FEF8),
        title:AutoSizeText("Notifications",style: TextStyle(color: Colours.black,fontWeight: FontWeight.w400,fontSize: 20),),
        // Padding(
        //   padding: const EdgeInsets.only(top: 5),
        //   child: SizedBox(
        //     height: MediaQuery.of(context).size.height * 0.05,
        //     width: MediaQuery.of(context).size.width * 0.55,
        //     child: TextField(style: TextStyle(color: Colours.black),
        //       onChanged: (value)=>_runFilter(value),
        //       decoration: InputDecoration(
        //         contentPadding:EdgeInsets.only(left: 15),
        //         hintText: "Search...",
        //         hintStyle: TextStyle(color: Colors.grey),
        //         suffixIcon: Icon(Icons.search,color: Colours.black),
        //         border: OutlineInputBorder( borderRadius: BorderRadius.circular(30.0),borderSide: BorderSide(color: Colours.black)
        //         ),
        //       ),
        //
        //     ),
        //   ),
        // ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
      body:
      Chat(),
    );
  }
}


