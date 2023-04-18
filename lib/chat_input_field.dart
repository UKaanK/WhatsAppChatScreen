
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ),
      decoration: BoxDecoration(
        color: Colors.black,
       
      ),
      child: SafeArea(child: Row(
        children: [
          Icon(Icons.add,color: Colors.blue),
          SizedBox(width: MediaQuery.of(context).size.width/25),
          Container(
          width: MediaQuery.of(context).size.width*0.63,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.withOpacity(0.2)
          ),
          child: Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width*0.02,),
              Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.white,fontSize: 20,),
                decoration: InputDecoration(
                  border: InputBorder.none
                ),
                
              ),
            ),
            Container(
            padding: EdgeInsets.only(right: 10),
            alignment: Alignment.centerRight,
            child: Icon(Icons.attachment,color: Colors.blue,)),
            ],
          ),
          // child: Container(
          //   padding: EdgeInsets.only(right: 15),
          //   alignment: Alignment.centerRight,
          //   child: Icon(Icons.attachment,color: Colors.blue,)),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.03),
          Icon(Icons.camera_alt_outlined,color: Colors.blue),
          SizedBox(width: MediaQuery.of(context).size.width*0.024),
          Icon(Icons.mic,color: Colors.blue)
        ],
      )),
    );
  }
}