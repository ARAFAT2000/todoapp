import 'package:flutter/material.dart';

import '../todoappstyle/style.dart';




class TodoPage extends StatefulWidget{
  const TodoPage({super.key});
  @override
  State<TodoPage> createState() =>TodoPageState();

}
class TodoPageState extends State<TodoPage>{

  List TodoList=[];

  String selec ="";
  MyInputOnChange(data){
    setState(() {
      selec=data;
    });
  }
AddData(){
   TodoList.add({'selec':selec});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Todo App'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 5),
          child: Column(
            children: [
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 80,
                          child: TextFormField(
                            /// onchanged a data likhle seta content hoye function a save hbe
                            onChanged: (data){MyInputOnChange(data);},
                            decoration: AppInputDecoration('Write here'),)),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                          flex: 30,
                          child: ElevatedButton(
                        style: AppElevatedButton(),
                        onPressed: (){AddData();},child: Text('Add'),)),
                    ],
                  )),
              Expanded(
                  flex: 50,
                  child: ListView.builder(
                      itemCount:TodoList.length ,
                      itemBuilder: (BuildContext,index){
                    return Card(
                     child: AppSizeBox(
                       Row(
                         children: [
                           Expanded(
                               flex:80,
                               child: Text(TodoList[index]['read'].toString())),
                           Expanded(
                               flex:20,
                               child: TextButton(
                                 //  style: AppElevatedButton(),
                                   onPressed: (){},
                                   child:Icon(Icons.delete,color: Colors.green,))),
                         ],
                       ),
                     ),
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }

}


