import 'package:starbhak_mart/pages/home_page.dart';
import 'package:flutter/material.dart';

class input extends StatefulWidget {
  const input({super.key});

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  String selectedValue = 'Makanan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          input(),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 50)),
              TextField(
                decoration: InputDecoration(
                    hintText: "Masukkan Nama Produk",
                    labelText: "Nama Produk",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 50)),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Masukkan Harga",
                        labelText: "Harga",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.black)],
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(20)),
                        child: DropdownButton<String>(
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          underline: SizedBox(),
                          isExpanded: true,
                          items: <String>['Makanan', 'Minuman', 'Dessert']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 50)),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Choose image",
                            labelText: "Image",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            margin: EdgeInsets.only(top: 40),
                            width: 430,
                            height: 60,
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Submit",
                                  style: TextStyle(fontSize: 18),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
