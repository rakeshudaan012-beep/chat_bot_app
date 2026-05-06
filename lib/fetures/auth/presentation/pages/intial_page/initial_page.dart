import 'package:chat_bot/core/app_constans/app_constans.dart';
import 'package:chat_bot/fetures/auth/presentation/pages/chat_page/chat_page.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {


  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {

  int selectedInd=0;
  TextEditingController queryTextController= TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black12,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(22),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(
                      text: 'Dir',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight:FontWeight.bold),
                      children:[
                        TextSpan(
                          text: 'IT',style: TextStyle(fontSize: 24,color: Colors.amber,fontWeight:FontWeight.bold)
                        )
                      ]
                    )),
                    Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey
                      ),child: Icon(Icons.person,color: Colors.white,),
                    )
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.messenger_outline,color: Colors.white,),
                        RichText(text: TextSpan(
                          text: ' Message',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight:FontWeight.bold),
                        )),
                      ],
                    ),

                    Row(
                      children: [
                        Icon(Icons.history,color: Colors.white,),
                        RichText(text: TextSpan(
                          text: ' History',style: TextStyle(fontSize: 16,color: Colors.grey,fontWeight:FontWeight.bold),
                        )),
                      ],
                    )

                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  maxLines: 4,
                  minLines: 4,
                  controller: queryTextController,
                  onEditingComplete: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatPage(query: queryTextController.text,)));
                  },
                  onSubmitted: (value){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(query: value,)));
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mic),
                    suffixIcon: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage(query: queryTextController.text,)));
                    }, icon:Icon(Icons.send)),
                    fillColor: Colors.grey,
                    filled: true,
                    hintText: 'Write a Message',
                    hintStyle:TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(11))
                    )
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: AppConstance.defaultQues.length,
                      itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        selectedInd=index;
                        setState(() {

                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border:index==selectedInd ? Border.all(
                            color: Colors.amber,
                            width: 1
                          ):Border.all(
                            width: 0
                          )
                        ),child: Center(child: Text(AppConstance.defaultQues[index]['title'],style: TextStyle(color:index==selectedInd ? Colors.amber :Colors.white),)),
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 14,
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: AppConstance.defaultQues[selectedInd]['ques'].length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 6

                      ),
                      itemBuilder: (_,index){
                      Map<String,dynamic> currentTitle=AppConstance.defaultQues[selectedInd]['ques'][index];
                        return InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatPage(query:currentTitle['ques'],)));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color:currentTitle['colors'],
                              borderRadius: BorderRadius.circular(21)
                            ),child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black38
                                ),child: Icon(currentTitle['Icons'],color: Colors.white,),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(currentTitle['ques'],style: TextStyle(fontSize: 20,color: Colors.white),maxLines: 2,)
                            ],
                          ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
    );
  }
}
