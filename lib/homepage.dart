import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = ["assets/img1.png", "assets/img2.png", "assets/img3.png", "assets/img4.png"];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset("assets/logo_center.png"),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset("assets/Search.png")),
          IconButton(onPressed: () {}, icon: Image.asset("assets/shopping_bag.png"))
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Column(
              children: [
                Image.asset("assets/Blog.png"),
                Image.asset("assets/line.png"),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(onPressed: () {}, child: Text("Fashion",
                    style: TextStyle(color: Colors.black,
                      backgroundColor: Colors.grey[200],
                      fontSize: 15
                    ),
                  )),
                  TextButton(onPressed: () {}, child: Text("Promo",
                    style: TextStyle(color: Colors.black,
                        backgroundColor: Colors.grey[200],
                        fontSize: 15
                    ),
                  )),
                  TextButton(onPressed: () {}, child: Text("Policy",
                    style: TextStyle(color: Colors.black,
                        backgroundColor: Colors.grey[200],
                        fontSize: 15
                    ),
                  )),
                  TextButton(onPressed: () {}, child: Text("LookBook",
                    style: TextStyle(color: Colors.black,
                        backgroundColor: Colors.grey[200],
                        fontSize: 15
                    ),
                  )),
                  TextButton(onPressed: () {}, child: Text("Sales",
                    style: TextStyle(color: Colors.black,
                        backgroundColor: Colors.grey[200],
                        fontSize: 15
                    ),
                  )),
                ],
              ),
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
                itemBuilder: (BuildContext context , int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                    child: Column(
                      children: [
                        Image.asset(list[index],
                          fit: BoxFit.cover,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("#Fashion"),
                            Text("#Tips"),
                            SizedBox(width: 100,),
                            Text("4 days ago")
                          ],
                        ),
                      ],
                    ),
                  );
                }
            ),
            TextButton(
                onPressed: () {},
                child: Text("LOAD MORE +",
                  style: TextStyle(
                      color: Colors.black,
                    fontSize: 20
                  ),
                )
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (){}, icon: Image.asset("assets/Twitter.png")
                ),
                IconButton(
                    onPressed: (){}, icon: Image.asset("assets/Instagram.png")
                ),
                IconButton(
                    onPressed: (){}, icon: Image.asset("assets/YouTube.png")
                ),
              ],
            ),
            SizedBox(height: 20,),
            Image.asset("assets/line.png"),
            SizedBox(height: 20,),
            Text("Support@openui.design"),
            Text("+60 825 876"),
            Text("08:00-22:00-Everyday"),
            SizedBox(height: 20,),
            Image.asset("assets/line.png"),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: Text("About",
                  style: TextStyle(color: Colors.black),
                )),
                TextButton(onPressed: () {}, child: Text("Contact",
                  style: TextStyle(color: Colors.black),
                )),
                TextButton(onPressed: () {}, child: Text("Blog",
                  style: TextStyle(color: Colors.black),
                )),
              ],
            ),
            Center(child: Text("Copyright OpenUI All Rights Reserved")),
            SizedBox(height: 150,)
          ],
        ),
      ),
    );
  }
}
