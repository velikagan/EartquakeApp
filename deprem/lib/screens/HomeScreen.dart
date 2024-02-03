import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            color: Color(0xFFC20A19),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/homelogo.png"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: DataTable(
                decoration: BoxDecoration(border: Border.all()),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Tarih',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Enlem',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Boylam',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Büyüklük',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Yer',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text('2024-02-01')),
                      DataCell(Text('39.85083	')),
                      DataCell(Text('41.80389')),
                      DataCell(Text('1.2')),
                      DataCell(Text('Erzurum')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('2024-02-01')),
                      DataCell(Text('36.00111')),
                      DataCell(Text('28.10111')),
                      DataCell(Text('1.7')),
                      DataCell(Text('Muğla')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('2024-02-01')),
                      DataCell(Text('38.26944	')),
                      DataCell(Text('38.81944')),
                      DataCell(Text('1.9')),
                      DataCell(Text('Malatya')),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text('2024-02-01')),
                      DataCell(Text('37.969441')),
                      DataCell(Text('27.13611')),
                      DataCell(Text('1.6')),
                      DataCell(Text('İzmir')),
                    ],
                  ),
                  
                  
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/Things'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFC20A19),
                  ),
                  child: Text(
                    "THINGS TO DO",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
