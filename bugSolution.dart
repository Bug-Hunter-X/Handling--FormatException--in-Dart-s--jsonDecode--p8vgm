```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // ... process jsonData ... 
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        // Handle the malformed JSON error appropriately, perhaps by logging it
        // Or retrying the request, displaying an error message etc.
      } catch (e) {
        print('Error: $e'); // Handle other unexpected errors
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('An error occurred: $e');
  }
}
```