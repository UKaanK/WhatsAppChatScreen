import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsappchatscreen/message_screen.dart';

class ChatScreen extends StatelessWidget {

  
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leadingWidth: 120,
       leading: TextButton(onPressed: (){}, child: Text("Düzenle",style: TextStyle(color:Colors.blue,fontSize: 21),)),
       actions: [
        IconButton(onPressed: (){},tooltip: "Open the camera", icon: Icon(Icons.camera_alt_outlined)),
        IconButton(onPressed: (){},tooltip: "New Chat", icon: Icon(Icons.create_outlined))
       ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text("Sohbetler",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),  
                ),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  
                  child: Padding(
                   padding: const EdgeInsets.only(top: 15,left:15,right: 10),
                    child: TextField(
                      
                      textAlign: TextAlign.center,
                      style:  TextStyle(color: Colors.white,),
                         obscureText: true,
                        decoration: InputDecoration( 
                          prefixIcon: Icon(Icons.notification_add),
                            fillColor: Colors.grey,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                             hintText: "Ara",
                    ),
                    ),
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(right:25),
                   child: IconButton(alignment: Alignment.bottomRight,onPressed: (){},icon: Icon(Icons.account_tree_outlined),color: Colors.grey,),
                 ),
              ],
            ),
           
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left:12,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){},child: Text("Toplu Mesaj Listesi",style: TextStyle(fontSize: 20,color: Colors.blue)),),
                  TextButton(onPressed: (){},child: Text("Yeni Grup",style: TextStyle(fontSize: 20,color: Colors.blue)))
                ],
              ),
            ),
            Divider(color: Colors.grey,),
           Expanded(
             child: ListView.builder(
               itemBuilder: (BuildContext context, int index) {
                   return  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen()));
                    },
                     child: Row(
                       children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left:15.0,bottom: 10),
                          child: CircleAvatar(
                            radius: 35,
                              backgroundImage: AssetImage("assets/images/sehinsah.jpg")
                          ),
                        ),
                         Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(faker.person.name(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 20),),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    Text("✓ ✓ ",style: TextStyle(color: Colors.blue),),
                                    Text(faker.company.position(),style: TextStyle(color: Colors.white38),),
                                  ],
                                )
                            ],
                           ),
                          )
                         )
                       ],
                     ),
                   );
               }
             ),
           )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 36,
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
       selectedItemColor: Colors.blue,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.cached_outlined),
            label: 'Durum',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: 'Aramalar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Topluluklar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Sohbetler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build_circle_sharp),
            label: 'Ayarlar',
          ),
        ],
      )
    );
  }
}