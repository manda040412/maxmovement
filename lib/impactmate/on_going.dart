import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class OnGoing extends StatefulWidget {
  const OnGoing({Key? key}) : super(key: key);

  @override
  State<OnGoing> createState() => _OnGoingState();
}

class _OnGoingState extends State<OnGoing> {
  int _selectedIndex = 0; // Default index for the Ongoing tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _bottomNavigationBarItem(IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Icon(icon, size: 35, color: _selectedIndex == index ? Colors.black : null),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _onItemTapped(0); // Update the selected index for Ongoing
                  },
                  child: Text(
                    'Ongoing',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: _selectedIndex == 0
                          ? FontWeight.bold
                          : FontWeight.normal,
                      decoration: _selectedIndex == 0
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onItemTapped(1); // Update the selected index for Scheduled
                  },
                  child: Text(
                    'Scheduled',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: _selectedIndex == 1
                          ? FontWeight.bold
                          : FontWeight.normal,
                      decoration: _selectedIndex == 1
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onItemTapped(2); // Update the selected index for Draft
                  },
                  child: Text(
                    'Draft',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: _selectedIndex == 2
                          ? FontWeight.bold
                          : FontWeight.normal,
                      decoration: _selectedIndex == 2
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _onItemTapped(3); // Update the selected index for Done
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: _selectedIndex == 3
                          ? FontWeight.bold
                          : FontWeight.normal,
                      decoration: _selectedIndex == 3
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Simulating a thicker underline for the first item (Ongoing)
          Container(
            width: MediaQuery.of(context).size.width * 0.25, // Adjust the width as needed
            height: _selectedIndex == 0 ? 3 : 0, // Thick underline if selected, none otherwise
            color: Colors.black,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      width: double.infinity, // Lebar card mengisi lebar layar
                      height: 380, // Tinggi card disesuaikan dengan kebutuhan
                      padding: const EdgeInsets.all(16.0), // Padding untuk konten card
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        gradient: LinearGradient(
                          colors: [Color(0xFFEEDFFF), Color(0xFFD8B5FF)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Materials translation quality',
                            style: TextStyle(
                              fontWeight: FontWeight.bold, // Make text bold
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Ensuring the correct translation from other foreign language in scope of international online learning platform',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'SDG Focus',
                            style: TextStyle(
                              fontWeight: FontWeight.bold, // Make text bold
                            ),
                          ),
                          SizedBox(height: 8),
                          Image.asset(
                            'assets/sdg4.png', // Path to your square image asset
                            width: 70, // Adjust width as needed
                            height: 70, // Adjust height as needed
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\$4500 are used in this project', // Make text bold
                            style: TextStyle(
                              fontWeight: FontWeight.bold, // Make text bold
                            ),
                          ),
                          Text(
                            '\nStarting Date : 22/02/2024\nEnds by: 22/06/2024 (Ending in 43 days)',
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Handle button press
                                },
                                child: Text('Update'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  //Placeholder for the graph
                  // Expanded(
                  //   child: charts.PieChart(
                  //     _createSampleData(),
                  //     animate: true,
                  //     defaultRenderer: charts.ArcRendererConfig(
                  //       arcWidth: 60,
                  //       arcRendererDecorators: [
                  //         charts.ArcLabelDecorator(
                  //           labelPosition: charts.ArcLabelPosition.inside,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            _bottomNavigationBarItem(Icons.home_outlined, 'Home', 0),
            _bottomNavigationBarItem(Icons.library_books_outlined, 'Projects', 1),
            BottomNavigationBarItem(
              icon: Transform.translate(
                offset: Offset(0, -30),
                child: Icon(Icons.control_point_outlined, size: 70),
              ),
              label: '', // Center icon button, might need to adjust for better UI/UX
            ),
            _bottomNavigationBarItem(Icons.line_axis, 'Reports', 2),
            _bottomNavigationBarItem(Icons.perm_identity, 'Profile', 3),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('2014', 5),
      OrdinalSales('2015', 25),
      OrdinalSales('2016', 100),
      OrdinalSales('2017', 75),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.red), // Warna merah
        labelAccessorFn: (OrdinalSales sales, _) => '${sales.sales}', // Menampilkan nilai pada chart
      )
    ];
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
