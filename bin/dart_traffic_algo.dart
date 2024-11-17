/* dummy data for the traffic prediction algorithm
 a datasets for the firts fifteen days of two months to develop and test the algorithm



 --- the traffic level goes from 0-1
 meaning at 0 the traffic is bad


 markdown: 0.1- 0.5 means slow car movements traffic
           0.5-0.7 means cars moving at average speed 
           0.8 - 1 means fast car movements

           all determined through 
  */

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class TrafficData {
  late String location;
  late DateTime timestamp;
  late double trafficLevel;

  TrafficData(this.timestamp, this.trafficLevel, this.location);
}

class TrafficFetcher {
  final String apiKey;
  final String apiUrl;

  TrafficFetcher(this.apiKey, this.apiUrl);

  // Method to fetch real-time traffic data for a given location
  Future<List<TrafficData>> fetchTrafficData(String location) async {
    try {
      final response = await http.get(
        Uri.parse('$apiUrl?location=$location&key=$apiKey'),
      );

      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return _parseTrafficData(jsonData, location);
      } else {
        print('Failed to fetch traffic data: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error fetching data: $e');
      return [];
    }
  }

  // Private method to parse JSON data into TrafficData objects
  List<TrafficData> _parseTrafficData(Map<String, dynamic> jsonData, String location) {
    List<TrafficData> trafficDataList = [];

    for (var dataPoint in jsonData['trafficPoints']) {
      DateTime timestamp = DateTime.parse(dataPoint['timestamp']);
      double trafficLevel = dataPoint['trafficLevel']; // Assume it's in the response
      trafficDataList.add(TrafficData(timestamp, trafficLevel, location));
    }

    return trafficDataList;
  }
}

// Function to categorize traffic level
String categorizeTraffic(double trafficLevel) {
  if (trafficLevel < 0.5) {
    return 'Slow Car Movements';
  } else if (trafficLevel >= 0.5 && trafficLevel <= 0.7) {
    return 'Average Speed';
  } else {
    return 'Fast Car Movements';
  }
}

void main() async {
  print('Enter your API Key:');
  String? apiKey = stdin.readLineSync();

  // Replace with a real API URL endpoint
  String apiUrl = 'https://api.example.com/trafficData';

  TrafficFetcher fetcher = TrafficFetcher(apiKey!, apiUrl);

  print('Enter your route here:');
  String? userRoute = stdin.readLineSync();

  if (userRoute != null && userRoute.isNotEmpty) {
    // Fetch traffic data for the user's input route
    List<TrafficData> trafficDataList = await fetcher.fetchTrafficData(userRoute);

    if (trafficDataList.isNotEmpty) {
      for (var data in trafficDataList) {
        print(
            'Traffic level for ${data.location} on ${data.timestamp}: ${categorizeTraffic(data.trafficLevel)} (${data.trafficLevel})');
      }
    } else {
      print("No traffic data available for the route: $userRoute");
    }
  } else {
    print("Invalid route input");
  }
}

