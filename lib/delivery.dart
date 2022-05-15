import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class delivery extends StatefulWidget {
  const delivery({Key? key}) : super(key: key);

  @override
  State<delivery> createState() => _deliveryState();
}

class _deliveryState extends State<delivery> {
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    final data = await json.decode(response);
    print(data);
    setState(() {
      _items = data["items"];
      print(_items);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text(
              'Track Of Package Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            elevation: 10.0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(children: [
              ElevatedButton(
                onPressed: readJson,
                child: const Text('*'),
                style: ElevatedButton.styleFrom(primary: Colors.black),
              ),

              // Display the data loaded from sample.json
              _items.isNotEmpty
                  ? Expanded(
                      child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Card(
                              margin: const EdgeInsets.all(10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                  dataRowColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.transparent),
                                  columns: const <DataColumn>[
                                    DataColumn(
                                        label: Text(
                                      'Student Name',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )),
                                    DataColumn(
                                      label: Text(
                                        'Mail-id',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Enrollment Number',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Semester & Branch',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Hostel-Room',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Expected Delivery Date',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Phone Number',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Delivery Partner',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Delivery Status',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                  rows: <DataRow>[
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text(
                                        _items[0]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(Text(
                                          _items[0]["Email"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[0]["Enrollment"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[0]["Sem_branch"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[0]["Hostel_Room"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[0]["Expected_Delivery_date"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[0]["Contact"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[0]["Delivery_Partner"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                        _items[0]["Delivery_Status"].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text(
                                        _items[1]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(Text(
                                          _items[1]["Email"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[1]["Enrollment"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[1]["Sem_branch"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[1]["Hostel_Room"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[1]["Expected_Delivery_date"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[1]["Contact"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[1]["Delivery_Partner"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                        _items[1]["Delivery_Status"].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text(
                                        _items[2]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(Text(
                                          _items[2]["Email"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[2]["Enrollment"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[2]["Sem_branch"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[2]["Hostel_Room"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[2]["Expected_Delivery_date"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[2]["Contact"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[2]["Delivery_Partner"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                        _items[2]["Delivery_Status"].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text(
                                        _items[3]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(Text(
                                          _items[3]["Email"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[3]["Enrollment"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[3]["Sem_branch"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[3]["Hostel_Room"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[3]["Expected_Delivery_date"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[3]["Contact"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[3]["Delivery_Partner"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                        _items[3]["Delivery_Status"].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text(
                                        _items[4]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(Text(
                                          _items[4]["Email"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[4]["Enrollment"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[4]["Sem_branch"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[4]["Hostel_Room"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[4]["Expected_Delivery_date"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[4]["Contact"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[4]["Delivery_Partner"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                        _items[4]["Delivery_Status"].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text(
                                        _items[5]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(Text(
                                          _items[5]["Email"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[5]["Enrollment"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[5]["Sem_branch"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[5]["Hostel_Room"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[5]["Expected_Delivery_date"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[5]["Contact"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[5]["Delivery_Partner"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                        _items[5]["Delivery_Status"].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text(
                                        _items[6]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(Text(
                                          _items[6]["Email"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[6]["Enrollment"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[6]["Sem_branch"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[6]["Hostel_Room"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[6]["Expected_Delivery_date"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[6]["Contact"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[6]["Delivery_Partner"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                        _items[6]["Delivery_Status"].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ]),
                                    DataRow(cells: <DataCell>[
                                      DataCell(Text(
                                        _items[7]["Name"],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                      DataCell(Text(
                                          _items[7]["Email"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[7]["Enrollment"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[7]["Sem_branch"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[7]["Hostel_Room"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[7]["Expected_Delivery_date"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[7]["Contact"].toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                          _items[7]["Delivery_Partner"]
                                              .toString(),
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold))),
                                      DataCell(Text(
                                        _items[7]["Delivery_Status"].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ])
                                  ],
                                ),
                              ),
                            );
                          }))
                  : Container()
            ]),
          ),
        ));
  }
}
