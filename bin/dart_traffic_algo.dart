/* dummy data for the traffic prediction algorithm
 a datasets for the firts fifteen days of two months to develop and test the algorithm



 --- the traffic level goes from 0-1
 meaning at 0 the traffic is bad


 markdown: 0.1- 0.5 means slow car movements traffic
           0.5-0.7 means cars moving at average speed 
           0.8 - 1 means fast car movements

           all determined through 
  */

import 'dart:io';

class TrafficData {
  late String location;
  late DateTime timestamp;
  late double trafficLevel;

  TrafficData(this.timestamp, this.trafficLevel, this.location);
}

void main() {
  List<TrafficData> dummyData = [
    TrafficData(DateTime(2023, 7, 1), 0.2,
        "Victoria Island"), // traffic situation for the month of july
    TrafficData(DateTime(2023, 7, 2), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 3), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 4), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 5), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 6), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 7), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 8), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 9), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 10), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 11), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 12), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 13), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 14), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 7, 15), 0.2, "Victoria Island"),

    TrafficData(DateTime(2023, 7, 1), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 2), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 3), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 4), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 5), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 6), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 7), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 8), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 9), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 10), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 11), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 12), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 13), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 14), 0.7, 'Ikeja'),
    TrafficData(DateTime(2023, 7, 15), 0.7, 'Ikeja'),

    TrafficData(DateTime(2023, 7, 1), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 2), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 3), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 4), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 5), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 6), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 7), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 8), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 9), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 10), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 11), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 12), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 13), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 14), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 7, 15), 0.8, 'Lekki Phase I'),

    TrafficData(DateTime(2023, 7, 1), 1, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 2), 1, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 3), 1, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 4), 0.8, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 5), 0.3, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 6), 0.4, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 7), 0.5, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 8), 0.6, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 9), 0.7, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 10), 0.8, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 11), 0.5, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 12), 0.6, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 13), 0.5, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 14), 0.7, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 7, 15), 0.8, 'Iyana Ipaja'),

// Data for The month of August

    TrafficData(DateTime(2023, 8, 1), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 2), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 3), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 4), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 5), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 6), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 7), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 8), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 9), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 10), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 11), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 12), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 13), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 14), 0.2, "Victoria Island"),
    TrafficData(DateTime(2023, 8, 15), 0.2, "Victoria Island"),

    TrafficData(DateTime(2023, 8, 1), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 2), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 3), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 4), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 5), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 6), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 7), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 8), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 9), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 10), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 11), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 12), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 13), 0.6, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 14), 0.7, 'Ikeja'),
    TrafficData(DateTime(2023, 8, 15), 0.7, 'Ikeja'),

    TrafficData(DateTime(2023, 8, 1), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 2), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 3), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 4), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 5), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 6), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 7), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 8), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 9), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 10), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 11), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 12), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 13), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 14), 0.8, 'Lekki Phase I'),
    TrafficData(DateTime(2023, 8, 15), 0.8, 'Lekki Phase I'),

    TrafficData(DateTime(2023, 8, 1), 1, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 2), 1, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 3), 1, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 4), 0.8, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 5), 0.3, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 6), 0.4, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 7), 0.5, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 8), 0.6, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 9), 0.7, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 10), 0.8, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 11), 0.5, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 12), 0.6, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 13), 0.5, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 14), 0.7, 'Iyana Ipaja'),
    TrafficData(DateTime(2023, 8, 15), 0.8, 'Iyana Ipaja'),
  ];

  print('Enter your route here:');

  String? UserRoute = stdin.readLineSync();

  TrafficData? UserTrafficData = dummyData.firstWhere(
    (data) => data.location.toLowerCase() == UserRoute?.toLowerCase(),
  );

  if (UserTrafficData != null) {
    print(
        'Traffic level for ${UserTrafficData.location} on ${UserTrafficData.timestamp}: ${UserTrafficData.trafficLevel}');
  } else {
    print("Route not found");
  }
}
