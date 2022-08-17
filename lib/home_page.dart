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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: null,
        title: Text('Cars',style: TextStyle(color: Colors.black,fontSize: 25),),
        brightness: Brightness.light,
        actions: <Widget> [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.black,))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, 'All'),
                    singleTab(false, 'red'),
                    singleTab(false, 'blue'),
                    singleTab(false, 'Green'),
                    singleTab(false, 'Grey'),





                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem('assets/images/img.png'),
              makeItem('assets/images/img_1.png'),
              makeItem('assets/images/img_2.png'),
              makeItem('assets/images/img_3.png'),
              makeItem('assets/images/img_4.png'),
              makeItem('assets/images/img.png'),
              makeItem('assets/images/img_1.png'),

            ],
          ),
        ),
      ),
      
    );
  }
  Widget singleTab(bool type, String text){
    return AspectRatio(aspectRatio: 2.2/1,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: type ? Colors.grey.shade200 : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(text,
        style: TextStyle(fontSize: type ? 20 : 17),
        ),
      ),
    ),
    );
  }
  
  Widget makeItem(String image){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image),
        fit: BoxFit.cover
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0,10)
          )
        ]
        
      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2)
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pdp Car',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text('Electric',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                  ],
                )),
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Center(
                    child: Icon(Icons.favorite_border,size: 20,),
                  ),
                )
              ],
            ),
            Text('100\$',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
          ],
        ),
      ),
    );
  }
  
  
}
