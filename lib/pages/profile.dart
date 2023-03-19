import 'package:flutter/material.dart';

class Profile extends StatelessWidget {

  List<String> category = [
    "food",
    "electronics",
    "grocious",
    "womens",
    "Mans Fashion"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: NestedScrollView(
        controller: ScrollController(keepScrollOffset: true),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 25,top: 60),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome.",
                          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Let’s gets something?",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 118,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                height: 118,
                                width: 284,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffF46D38),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 6, left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "40% Off During \n Covid 19 ",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Image.network(
                                          "https://freepngimg.com/thumb/vegetable/2-2-vegetable-png-clipart.png",
                                          height: 55,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 118,
                                width: 284,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xff3861F4),
                                ),
                                child: Padding(
                                  padding:
                                  const EdgeInsets.only(top: 6, left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "40% Off During \n Covid 19 ",
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Image.network(
                                          "https://freepngimg.com/thumb/vegetable/2-2-vegetable-png-clipart.png",
                                          height: 55,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Top Categories",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 28.0),
                              child: Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffFF4800)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 30,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: category.length,
                              itemBuilder: (_, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xffC4C4C4)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12, right: 12, top: 5),
                                      child: Text(
                                        category[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(height: 30,),

                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ];
        },


        body: Expanded(
            child:GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 70,
                ),
                itemCount: 10,
                itemBuilder: (_,index){
                  return Stack(
                    alignment: AlignmentDirectional.center,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 217,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 28.0,top: 85),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Apple Watch",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                              SizedBox(height: 8,),
                              Text("Series 6 . Red",style: TextStyle(fontSize: 16,color: Color(0xff868686)),),
                              SizedBox(height: 10,),
                              Text("\$ 359",style: TextStyle(color: Color(0xff5956E9),fontWeight: FontWeight.w600,fontSize: 17),)

                            ],
                          ),
                        ),

                      ),
                      Positioned(
                        top:-50,
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffFADFE0),

                          ),
                          child: Image.asset("asssets/image.png"),
                        ),
                      )

                    ],
                  );
                }) )
      ),
    );
  }
}
