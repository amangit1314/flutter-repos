import 'package:aman_stream_chat_app/screens/common/el_row.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

Column buildColumn(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: SizedBox(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text("Messages",
                    style: TextStyle(color: Colors.black, fontSize: 29)),
                SizedBox(width: 115),
                IconButton(
                  onPressed: () {/*null*/},
                  icon: Icon(
                    MdiIcons.themeLightDark,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {/*null*/},
                  icon: Icon(MdiIcons.account),
                  color: Colors.black,
                )
              ],
            )),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                foregroundImage: NetworkImage(''),
              ),
              SizedBox(width: 8,),
              CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/images/jpg/1.jpg'),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                foregroundImage: AssetImage('assets/images/jpg/2.jpg'),
                radius: 30,
              ),
              SizedBox(width: 8),
              CircleAvatar(
                foregroundImage: AssetImage('assets/images/jpg/3.jpg'),
                radius: 30,
              ),
              SizedBox(width: 8),
              CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/images/jpg/4.jpg'),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/images/jpg/5.jpg'),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/images/jpg/6.jpg'),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/images/jpg/7.jpg'),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                radius: 30,
                foregroundImage: AssetImage('assets/images/jpg/8.jpg'),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
      SizedBox(height: 20),
      ERow(
        forImage: AssetImage('assets/images/jpg/1.jpg'),
        message: "Write here something",
        name: "Aman",
      ),
    ],
  );
}
