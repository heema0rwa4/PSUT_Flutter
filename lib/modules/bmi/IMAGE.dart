import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageTrial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0,),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(

                children: [
                  Image(
                    image: NetworkImage(
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.explicit.bing.net%2Fth%3Fid%3DOIP.EbpdYvDgkLt8s_SnqYBvogHaEo%26pid%3DApi&f=1&ipt=9b5b8ca3ef10921badec80fc18343c43f6a8850fe0f7088274ed55e461867c18&ipo=images',
                    ),
                    width: 250.0,
                    height: 250.0,
                  ),
                  Container(padding: EdgeInsetsDirectional.only(
                    start: 20,
                    
                  ),
                    width: 250.0,
                    color: Colors.black,
                    child: Text('Puss in boot',

                    textAlign:TextAlign.center ,
                      style: TextStyle(
                        color: Colors.white,


                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
