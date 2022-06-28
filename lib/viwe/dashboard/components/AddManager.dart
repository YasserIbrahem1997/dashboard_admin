import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AddManager extends StatelessWidget {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color:secondaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
        ),
        child: Column(
          children: [

            Row(
              children: [
                Text(
                  'Add SubAdmin',
                  style: TextStyle(

                      color: bgColorDashbord,
                      fontSize: 20),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.group_add,
                  color: Color(0xffff6600),
                )
              ],
            ),
          SizedBox(height: 10,),
          ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                        padding: EdgeInsets.all(13),
                        margin:EdgeInsets.symmetric(horizontal: 20,vertical: 10) ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: primaryColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor:secondaryColor,
                                    radius: 25,
                                    child: Icon(
                                      Icons.person,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'Kamal magdy kamal',
                                    style: TextStyle(

                                        color: bgColorDashbord,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              Row(
                                children: [

                                  GestureDetector(
                                    child: CircleAvatar(

                                      child: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      backgroundColor: Colors.red,
                                      radius: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    child: CircleAvatar(
                                      radius: 16,

                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      backgroundColor: Colors.green,
                                    ),
                                  ),

                                ],
                              )
                            ],
                          ),
                        )
                      );
                },
              ),

          ],
        ));
  }
}
