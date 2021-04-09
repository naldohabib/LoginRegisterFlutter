import 'package:flutter/material.dart';
import 'package:flutterapitut/Controllers/databasehelper.dart';
import 'package:flutterapitut/model/challge_details.dart';
import 'package:flutterapitut/model/challge_model.dart';

class ShowData extends StatelessWidget {
  List<Movie> list;
  int index;
  ShowData({this.index, this.list});

  @override
  Widget build(BuildContext context) {
    DatabaseHelper databaseHelper = new DatabaseHelper();
    MovieDetails movieDetails;
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              FutureBuilder(
                  future: databaseHelper.getDetails(list[index]),
                  builder: (_, snapshot) {
                    if (snapshot.hasData) {
                      movieDetails = snapshot.data;
                    }

                    return Column(
                      children: [
                        Text("data"),
                        (snapshot.hasData)
                            ? Text(list[index].reward,
                                style: TextStyle(color: Colors.black))
                            : SizedBox(
                                height: 50,
                                width: 50,
                                child: Text("NO DATA"),
                              ),
                        (snapshot.hasData)
                            ? Text(movieDetails.difficultyLevel,
                                style: TextStyle(color: Colors.black))
                            : SizedBox(
                                height: 50,
                                width: 50,
                                child: Text("NO DATA"),
                              ),
                      ],
                    );
                  })
            ],
          )
        ],
      ),
    );
  }
}

// class ShowData extends StatefulWidget {
//   List<Movie> list;
//   int index;
//   ShowData({this.index, this.list});

//   @override
//   ShowDataState createState() => ShowDataState();
// }

// class ShowDataState extends State<ShowData> {
//   DatabaseHelper databaseHelper = new DatabaseHelper();
//   MovieDetails movieDetails;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Login',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Login'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.arrow_back_ios),
//               onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
//                 builder: (BuildContext context) => new Dashboard(),
//               )),
//             )
//           ],
//         ),
//         body: Container(
//           child: ListView(
//             padding: const EdgeInsets.only(
//                 top: 62, left: 12.0, right: 12.0, bottom: 12.0),
//             children: <Widget>[
//               // Text(movieDetails.challengeRuleDescription),
//               FutureBuilder(
//                   future:
//                       databaseHelper.getDetails(list),
//                   builder: (_, snapshot) {
//                     if (snapshot.hasData) {
//                       movieDetails = snapshot.data;
//                       print(movieDetails);
//                     }
//                     return Text(widget.list[widget.index].challengeMaker,
//                         // movieDetails.user,
//                         style: TextStyle(color: Colors.black));
//                     // return Column(
//                     //   children: [
//                     //     Container(
//                     //       height: 50,
//                     //       child: new Text(
//                     //         // movieDetails.description,
//                     //         "Name : ${widget.list[widget.index].title}",
//                     //         textAlign: TextAlign.center,
//                     //         overflow: TextOverflow.ellipsis,
//                     //         style: TextStyle(fontWeight: FontWeight.bold),
//                     //       ),
//                     //     ),
//                     //     (snapshot.hasData)
//                     //         ? Text(
//                     //             movieDetails.description,
//                     //             style: TextStyle(color: Colors.black),
//                     //           )
//                     //         : Text("Tidak Masuk ",
//                     //             style: TextStyle(color: Colors.black)),
//                     //   ],
//                     // );
//                   }),
//               // Container(
//               //   height: 50,
//               //   child: new Text(
//               //     "Name : ${widget.list[widget.index].title}",
//               //     textAlign: TextAlign.center,
//               //     overflow: TextOverflow.ellipsis,
//               //     style: TextStyle(fontWeight: FontWeight.bold),
//               //   ),
//               // ),
//               // new Padding(
//               //   padding: new EdgeInsets.only(top: 44.0),
//               // ),
//               // Container(
//               //   height: 50,
//               //   child: new Text(
//               //     " Price : ${widget.list[widget.index].reward}",
//               //     textAlign: TextAlign.center,
//               //     overflow: TextOverflow.ellipsis,
//               //     style: TextStyle(fontWeight: FontWeight.bold),
//               //   ),
//               // ),
//               // new Padding(padding: new EdgeInsets.only(top: 44.0),),

//               // Container(
//               //   height: 50,
//               //   child: new Text(
//               //     " Created at : ${widget.list[widget.index].}",
//               //     textAlign: TextAlign.center,
//               //     overflow: TextOverflow.ellipsis,
//               //     style: TextStyle(fontWeight: FontWeight.bold),
//               //   ),
//               // ),

//               // Container(
//               //   height: 50,
//               //   child: new Text(
//               //     " Updated at : ${widget.list[widget.index]['updated_at']}",
//               //     textAlign: TextAlign.center,
//               //     overflow: TextOverflow.ellipsis,
//               //     style: TextStyle(fontWeight: FontWeight.bold),
//               //   ),
//               // ),

//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Container(
//                     height: 50,
//                     child: new FlatButton(
//                       onPressed: () =>
//                           Navigator.of(context).push(new MaterialPageRoute(
//                         builder: (BuildContext context) => new EditData(
//                             list: widget.list, index: widget.index),
//                       )),
//                       color: Colors.green,
//                       child: new Text(
//                         'Edit',
//                         style: new TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),

//                   // Container(
//                   //   height: 50,
//                   //   child: new FlatButton(
//                   //     onPressed: (){
//                   //       databaseHelper.deleteData(widget.list[widget.index]['id']);
//                   //       Navigator.of(context).push(
//                   //           new MaterialPageRoute(
//                   //             builder: (BuildContext context) => new Dashboard(),
//                   //           )
//                   //       );
//                   //     },
//                   //     color: Colors.blue,
//                   //     child: new Text(
//                   //       'Delete',
//                   //       style: new TextStyle(
//                   //         color: Colors.red,
//                   //       ),),
//                   //   ),
//                   // ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _showDialog() {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: new Text('Failed'),
//             content: new Text('Check your email or password'),
//             actions: <Widget>[
//               new RaisedButton(
//                 child: new Text(
//                   'Close',
//                 ),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//             ],
//           );
//         });
//   }
// }
