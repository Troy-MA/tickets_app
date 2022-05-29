import 'package:flutter/material.dart';
import 'package:tickets_app/ui/ui_methods.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomNav(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tiketsText(),
          textField(),
          categoriesList(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                color: Colors.transparent,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ticketCard(
                        imageUrl:
                            'https://images.unsplash.com/photo-1576967402682-19976eb930f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGNvbmNlcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                        description:
                            'This show is something that has never happened before in music it is massive',
                        location: 'Zomba',
                        mainAct: 'Hayze Engola',
                        name: 'Extermination',
                        price: '199',
                      ),
                      ticketCard(
                        imageUrl:
                            'https://images.unsplash.com/photo-1565035010268-a3816f98589a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y29uY2VydHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                        description: 'this show is going to be massive bro',
                        location: 'Blantyre',
                        mainAct: 'Hayze Engola',
                        name: 'The Propaganda',
                        price: '23.99',
                      ),
                      ticketCard(
                        imageUrl:
                            'https://images.unsplash.com/photo-1509824227185-9c5a01ceba0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNvbmNlcnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                        description:
                            'This show is going to be the biggest ever in the city',
                        location: 'Lilongwe',
                        mainAct: 'Gwamba',
                        name: 'The MassiveFest',
                        price: '10.99',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
