import 'package:flutter/material.dart';
import 'package:rest/colors/app_colors.dart';
import 'package:rest/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mydata = [
      "item 1",
      "item 2",
      "item 3",
      "item 4",
      "item 5",
      "item 6",
      "item 6",
      "item 6",
      "item 6",
      "item 6",
      "item 6",
      "item 6",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 60 ),
            alignment: Alignment.topLeft,
            child: Icon(Icons.arrow_back, color: AppColors.secondaryColor,),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/header1.jpg")
              )
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                 Icon(Icons.house, color: AppColors.secondaryColor,),
                 const SizedBox(width: 10,),
                 // Icon(Icons.)
                Container(
                  width: 20 ,
                  height: 20 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black
                  ),
                  child: const Icon(Icons.add, color: Colors.white, size: 20,),

                ),
                Expanded(child: Container()),
                Icon(Icons.calendar_month_sharp  , color: AppColors.secondaryColor,),
                const SizedBox(width: 10,),
                Text("2", style: TextStyle(
                  fontSize: 20,
                  color: AppColors.secondaryColor
                ),)
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
                itemCount: mydata.length,
                itemBuilder: (context, index){
              return Dismissible(
                onDismissed: (DismissDirection direction){
                  print(direction.index);
                },
                confirmDismiss: (DismissDirection direction) async {
                  print(mydata[index]);
                  return false;
                },
                key: ObjectKey(index),
                child: Container(
                  margin:const EdgeInsets.only(left: 10, right: 10, bottom: 3),
                  child: TaskWidget(text:  mydata[index] , color: Colors.blueGrey),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
