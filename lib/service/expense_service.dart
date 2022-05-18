import 'package:http/http.dart' as http;

class ExpenseService {
  final url = "";

  Future<dynamic> addNewExpense({required astraToken}) async {
    http.Response _httpResponse = await http.post(
      Uri.parse(
        url,
      ),
      body: {
        "item"
            "price": "",
      },
      headers: {
        "x-cassandra-token": astraToken,
      },
    );
  }
}
