import 'package:flutter/material.dart';
import 'package:rest/colors/app_colors.dart';
import 'package:rest/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const  HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.only(left: 20, right: 20),

        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/welcome.jpg')
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               RichText(
                   text:TextSpan(
                     text: "Hello",
                     style: TextStyle(
                       color: AppColors.mainColor,
                       fontSize: 60,
                       fontWeight: FontWeight.bold
                     ),
                     children: [
                       TextSpan(
                       text: "\n Start yout beautiful day.",
                       style: TextStyle(
                           color: AppColors.mainColor,
                           fontSize: 14,
                           fontWeight: FontWeight.bold
                       )),
                     ]
                   )
               ),
              SizedBox(height: MediaQuery.of(context).size.height/2.5,),
              ButtonWidget(bgcolor: AppColors.mainColor, text: "Add Task", textColor: Colors.white),
              const SizedBox(height: 20,),
              ButtonWidget(bgcolor: Colors.white , text: "View All", textColor: AppColors.smallTextColor)
          ],
        ),

      )
    );
  }
}
