import 'package:flutter/material.dart';

class Ads extends StatelessWidget {
  const Ads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        children: [
          Expanded(
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
        ],
      ),
    );
  }
}
