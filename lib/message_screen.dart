import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappchatscreen/message_body.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Faker faker =Faker();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: false,
        backgroundColor: Colors.black,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                 backgroundImage: AssetImage("assets/images/sehinsah.jpg")
              ),
              SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(faker.person.name(),style: TextStyle(overflow: TextOverflow.ellipsis)),
                    Text("Son Görülme ${faker.date.justTime()}",style: TextStyle(color: Colors.grey,fontSize: 13),)
                  ],
                ),
               
            ]
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined,size: 33,color: Colors.blue,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call_outlined,size: 31,color: Colors.blue,))
        ],
      ),
      body: MessageBody(),
    );
  }
}