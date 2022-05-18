import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _customAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addExpense();
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(
                vertical: 50,
              ),
              height: 150,
              child: Column(
                children: const [
                  Text(
                    "Current Balance",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "\$933",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            child: const Text(
              "Expenses",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            height: 400,
            child: ListView(
              children: [
                _expenseCard(title: "Mango", price: "7.32"),
                _expenseCard(title: "Black Shoe", price: "99.8"),
                _expenseCard(title: "Airpod", price: " 199.0"),
                _expenseCard(title: "Car repair", price: "629.0"),
                _expenseCard(title: "Electricity", price: "49.7"),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _addExpense() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SizedBox(
        height: 200,
        child: ListView(children: [
          const TextField(
            decoration: InputDecoration(
              labelText: "Item",
              filled: true,
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "Price",
              filled: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Add"),
            ),
          )
        ]),
      ),
    );
  }

  Card _expenseCard({required String title, required String price}) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Text(
          "\$" + price,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  AppBar _customAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text("Traex"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.account_circle,
          ),
        ),
      ],
    );
  }
}
