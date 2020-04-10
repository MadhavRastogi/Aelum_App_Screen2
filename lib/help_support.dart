import 'package:assignment2/cards.dart';
import 'package:assignment2/constants.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {

   List<Cards> lists=[
     Cards(text:'Profiles & Photos',symbol: 'prof.jpg'),
     Cards(text:'Membership & Payments',symbol: 'pay.jpg'),
     Cards(text:'Contacting Members',symbol: 'conc_mem.jpg'),
     Cards(text:'Search Options',symbol: 'search.png'),
     Cards(text:'About',symbol: 'about.png'),
     Cards(text:'FAQ',symbol: 'faq.jpg'),
   ];


  Widget _buildCards(String  text, String symbol) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(20.0,30.0,20.0,0),
          child: Card(
            child: ListTile(
              onTap: () {},
              title: Text(
                  text,
                  style: TextStyle(color: Colors.lightBlueAccent,fontSize: 20.0),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/$symbol'),
              ),
            ),
          ),
        );
  }

  Widget _buildText(){
     return Padding(
       padding: const EdgeInsets.fromLTRB(20.0,20.0,20.0,0.0),
       child: Text(
           'You can choose from popular topics below',
           style: TextStyle(color: Colors.grey[800],fontSize: 22.0),
       ),
     );
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title:Text('Help & Support'),
           centerTitle: true,
          actions: <Widget>[
               FlatButton(
                 onPressed: (){},
                 child: Text('Sign In',style: TextStyle(color:Colors.white),),
               )
            ],
        ),
        body: CustomScrollView(
            slivers: <Widget>[
                SliverAppBar(
                 stretch: true,
                  title: Text('Hi, how can we help you?',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                   centerTitle: true,
                   backgroundColor: Colors.grey[500],
                   expandedHeight: 200,
                   flexibleSpace: FlexibleSpaceBar(
                                 title:Container(
                                   padding: EdgeInsets.fromLTRB(30.0,10.0,30.0,0.0),
                                   margin: EdgeInsets.fromLTRB(50.0,50.0,50.0,0),
                                   alignment: Alignment.bottomCenter,
                                    child: TextFormField(
                                       decoration: textInputDecoration,
                                       onChanged: (val){},
                                    ),
                                 ) ,
                                centerTitle: true,
                                background:Container(
                                    child: Image(
                                    image: AssetImage('assets/bk.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                )
                          ),
                        ),
                  SliverFixedExtentList(
                          itemExtent: 100,
                 delegate: SliverChildListDelegate(
                  [
                          _buildText(),
                          _buildCards(lists[0].text,lists[0].symbol),
                          _buildCards(lists[1].text,lists[1].symbol),
                          _buildCards(lists[2].text,lists[2].symbol),
                          _buildCards(lists[3].text,lists[3].symbol),
                          _buildCards(lists[4].text,lists[4].symbol),
                          _buildCards(lists[5].text,lists[5].symbol),
                    ]
                             ),
                           )
                        ],
                      ),
                    );
  }
}
