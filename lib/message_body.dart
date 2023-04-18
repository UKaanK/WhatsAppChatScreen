import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'chat_input_field.dart';

class MessageBody extends StatefulWidget {


  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    
    return Column(  
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              
              image: DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/images/wallpapers.jfif")),
            ),
            
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,itemBuilder: (context,index)=>Message()),
          ),
        ),
        ChatInputField()
      ],
    );
  }
}
class Message extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:  faker.person.prefix().contains("Mr")?MainAxisAlignment.end:MainAxisAlignment.start,
      
      children: [
        
        TextMessage(),
       
      ],
    );
  }
}

class TextMessage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        children: [
          
          Text(
            faker.currency.name(),
            style: TextStyle(color: Colors.white),
            overflow: TextOverflow.visible,
            ),
        ],
      )
        );
  }
}
