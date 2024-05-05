import 'package:flutter/material.dart';
import 'package:maxmovement/impactmate/im_splashscreen.dart';
import 'package:maxmovement/impactmate/on_going.dart';

class IMHomePage extends StatefulWidget {
  const IMHomePage({Key? key}) : super(key: key);

  @override
  State<IMHomePage> createState() => _HomePageState();
}

class _HomePageState extends State<IMHomePage> {
  int _selectedIndex = 0;

  // Define _onItemTapped method here
  void _onItemTapped(int index) {
    if (index == 1) { // Check if Projects button is tapped
      // Navigate to ProjectsPage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnGoing()),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  // Helper method implementations
  Widget _buildIncomeToExpenditureChart() {
    // Replace with your Income to Expenditure Chart widget
    return Container(
      height: 200,
      color: Colors.blue,
      child: Center(child: Text('Income to Expenditure Placeholder')),
    );
  }

  Widget _buildYourProjectsPieChart() {
    // Replace with your Your Projects Pie Chart widget
    return Container(
      height: 200,
      color: Colors.red,
      child: Center(child: Text('Your Projects Placeholder')),
    );
  }

  Widget _buildFundingProgressGraph() {
    // Replace with your Funding Progress Graph widget
    return Container(
      height: 200,
      color: Colors.green,
      child: Center(child: Text('Funding Progress Placeholder')),
    );
  }

  Widget _buildProjectASDGScoreSemiCircleGraph() {
    // Replace with your Project A SDG Score Semi-Circle Graph widget
    return Container(
      height: 200,
      color: Colors.yellow,
      child: Center(child: Text('Project A SDG Score Placeholder')),
    );
  }

  Widget _recentProjects() {
    return Container(
      height: 100,
      color: Colors.purple,
      child: Center(child: Text('Recent Projects Placeholder')),
    );
  }

  Widget _reportTemplate() {
    return Container(
      height: 100,
      color: Colors.orange,
      child: Center(child: Text('Report Template Placeholder')),
    );
  }

  Widget _projectDictionary() {
    return Container(
      height: 100,
      color: Colors.brown,
      child: Center(child: Text('Project Dictionary Placeholder')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaxMovement'),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            _buildIncomeToExpenditureChart(),
            SizedBox(height: 20),
            _buildYourProjectsPieChart(),
            SizedBox(height: 20),
            _buildFundingProgressGraph(),
            SizedBox(height: 20),
            _buildProjectASDGScoreSemiCircleGraph(),
            SizedBox(height: 20),
            _recentProjects(),
            SizedBox(height: 20),
            _reportTemplate(),
            SizedBox(height: 20),
            _projectDictionary(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70, // Adjust this height according to your requirement
        width: MediaQuery.of(context).size.width,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 35),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books_outlined, size: 35),
              label: 'Projects',
            ),
            BottomNavigationBarItem(
              icon: Transform.translate(
                offset: Offset(0, -30),
                child: Icon(Icons.control_point_outlined, size: 70),
              ),
              label: '', // Center icon button, might need to adjust for better UI/UX
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.line_axis, size: 35),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity, size: 35),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
