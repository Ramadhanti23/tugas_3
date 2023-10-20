import 'package:flutter/material.dart';

void main() {
  runApp(DatadiriApp());
}

class DatadiriApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ProfileScreen(),
    OtherScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App with Bottom Menu'),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Other',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5, // Adjust the elevation for a shadow effect
        margin: EdgeInsets.all(20), // Adjust margin as needed
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Welcome to the Portofolio',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add spacing between text and other content
              Text(
                'This is a sample card view in Flutter.',
                style: TextStyle(fontSize: 16),
              ),
              // You can add more widgets inside the card as needed
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // File? _image;

  // Future<void> _pickImage() async {
  //   final Picker = ImagePicker();
  //   final pickedFile = await picker.getImage(source: ImageSource.gallery);
  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            // onTap: _pickImage,
            child: CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/image/el.jpg') // Default image asset
              //     : FileImage(_image!),
              // radius: 50,
            ),
          ),
          SizedBox(height: 10),
          Text('Nama : Ramadhanti Elvina Pragisya'),
          Text('Nim : 20210801204'),
          Text('Fakultas: Teknik Informatiika'),
          Text(
            'Profile Screen',

            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// class other extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Education and Employment'),
//       ListTile()
//     );
//   }
// }
//
// class SettingsScreen extends StatelessWidget {
//  @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Settings Screen'),
//     );
//   }
// }

class OtherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education and Employment',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ListTile(
            title: Text('Education'),
            subtitle: Text('Universitas Esa Unggul , 2001-2023'),
          ),
          ListTile(
            title: Text('Employment'),
            subtitle: Text('PT Eds Manufacturing Indonesia, 2020-2023'),
          ),
          // Add more education details here
        ],
      ),
    );
  }
}
