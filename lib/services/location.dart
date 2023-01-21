// import 'package:geolocator/geolocator.dart';
//
// class Location {
//   late double longitude;
//   late double latitude;
//
//   Future<void> getCurrentLocation() async {
//     try {
//       // somethingThatExpectNumberLessThan10(14);
//       Position position = await Geolocator.getCurrentPosition(
//           desiredAccuracy: LocationAccuracy.low);
//
//       latitude = position.latitude;
//       longitude = position.longitude;
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
// // void somethingThatExpectNumberLessThan10(int n) {
// //   if (n > 10) {
// //     throw 'number is greater than 10';
// //   }
// // }
