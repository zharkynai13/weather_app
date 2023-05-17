import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/view/home_controller.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GetBuilder<HomeController>(
        builder: (controller) => Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(  
                 decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                 )),
                 child: Stack(children: <Widget>[
                  Container(
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: IconButton(icon: const Icon(Icons.menu,
                      color: Colors.white,), 
                      onPressed: () {  }, 
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 100
                    ),
                    child: TextField(
                      onChanged: (value) => {},
                      style: const TextStyle(
                        color: Colors.white
                      ),
                      textInputAction: TextInputAction.search,
                      onSubmitted: (value) {},
                      decoration:const  InputDecoration(
                        suffix: Icon(Icons.search, 
                        color: Colors.white,),
                        hintStyle: TextStyle(
                          color: Colors.white
                        ),
                        hintText: "SEARCH",
                        border: OutlineInputBorder(
                        //  borderRadius: BorderRadius.all(10),
                         borderSide: BorderSide(color: Colors.white)
                        ),
                        focusedBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.horizontal(left: 10, right: 10)
                          borderSide: BorderSide(color: Colors.white)
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)
                        )

                      ),
                    ),
                  ),
                  Align(alignment: Alignment(0, 1.0),
                  child: SizedBox(
                    height: 10,
                    width: 10,
                    child: OverflowBox(
                      minWidth: 0.0,
                      minHeight: MediaQuery.of(context).size.width,
                      // minHeight: 0.0;
                      maxHeight: (MediaQuery.of(context).size.height / 4),
                    ),
                  ),
                  )

                 ]),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container()
            )
          ],
        )),
    );
  }
}