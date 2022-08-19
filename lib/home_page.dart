import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Cars',style: TextStyle(color: Colors.red),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.red,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.red,))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height:40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,'All'),
                    singleTab(false,'Red'),
                    singleTab(false,'Blue'),
                    singleTab(false,'Black'),
                    singleTab(false,'Yellow'),
                    singleTab(false,'Pink'),



                  ],
                ),
              ),
              SizedBox(height: 10,),

              makeItem('assets/images/img.png'),
              makeItem('assets/images/img_1.png'),
              makeItem('assets/images/img_2.png')

            ],
          ),
        ),
      ),
    );
  }
        Widget singleTab(bool type,String text){
    return AspectRatio(aspectRatio: 2.2/1,
    child: Container(
     margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: type ? Colors.red
              :Colors.white),
      child: Center(child: Text(text,style: TextStyle(fontSize: type ? 18 : 15,color: type ?Colors.white :Colors.black),),),
    ),
    );
        }

  Widget makeItem(String image){

    return Padding(padding: EdgeInsets.all(8),
    child:Container(
      height: 250,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image,),fit: BoxFit.cover
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0,10),
                blurRadius: 10,


            )
          ]
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.4),
                  Colors.black.withOpacity(0.4),

                ]
            )
        ),
        child: Container(
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 20,top: 20,right: 10),
                        child: Container(
                          child: Text('PDP Car',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                        ),
                      ),

                      Padding( padding: EdgeInsets.only(top: 20),
                        child: Container(
                          child: Text('Electric',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize:23 ),),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Container(
                      child: Text('100\$',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                    child: IconButton(onPressed: (){},
                        icon: Icon(Icons.favorite_border,color: Colors.white,)),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,color: Colors.red
                    ),
                ),
              )
            ],
          ),

        ),
      ),

    )
    ) ;
  }
  
  
}
