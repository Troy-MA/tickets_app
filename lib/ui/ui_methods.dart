import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

BottomNavigationBar bottomNav() {
  return BottomNavigationBar(items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.paid),
      label: 'tickets',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'profile',
    ),
  ]);
}

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.menu),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications),
      )
    ],
  );
}

Padding tiketsText() {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0),
    child: Text(
      'Tik ets',
      style: GoogleFonts.pacifico(fontSize: 60),
    ),
  );
}

Padding categoriesList() {
  Map<String, IconData> categoryItems = {
    'Upcoming': Icons.timelapse_sharp,
    'Concerts': Icons.color_lens_outlined,
    'Near you': Icons.near_me,
    'Promotion': Icons.panorama_fish_eye_sharp,
    'December': Icons.calendar_month,
  };
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, top: 12, bottom: 12),
    child: SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryItems.length,
        itemBuilder: ((context, index) => categoryCard(categoryItems, index)),
      ),
    ),
  );
}

SizedBox categoryCard(Map<String, IconData> categoryItems, int index) {
  return SizedBox(
    width: 90,
    height: 90,
    child: Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            categoryItems.entries.map((e) => e.value).toList()[index],
          ),
          Text(
            categoryItems.entries.map((e) => e.key).toList()[index],
          )
        ],
      ),
    ),
  );
}

Padding textField() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey[800]!,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.orange)),
        prefixIcon: const Icon(
          Icons.search,
        ),
        hintText: 'search for tickets...',
      ),
    ),
  );
}

SizedBox ticketCard({
  required String imageUrl,
  required String price,
  required String description,
  required String location,
  required String mainAct,
  required String name,
}) {
  return SizedBox(
    width: 200,
    height: 800,
    child: Card(
      elevation: 5,
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          orangeDivider(),
          Expanded(
            flex: 2,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.orange,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$$price',
                          style: const TextStyle(
                              fontSize: 25, color: Colors.orange),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.orange,
                        ),
                        Text(
                          location,
                          style: TextStyle(color: Colors.grey[400]),
                        )
                      ],
                    ),
                    Text(
                      description,
                      textAlign: TextAlign.justify,
                    ),
                    Row(
                      children: [
                        Text(
                          'Main ',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                        const Icon(Icons.people_alt_outlined,
                            color: Colors.orange),
                        Text('' + mainAct)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
              child: InkWell(
                child: Container(
                  color: Colors.orange,
                  child: const Center(child: Text('Open')),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Container orangeDivider() {
  return Container(
    color: Colors.orange,
    width: 200,
    height: 2,
  );
}
