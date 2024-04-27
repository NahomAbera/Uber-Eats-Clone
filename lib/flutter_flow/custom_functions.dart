import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<RestaurantsRecord> getRestaurantList(
  List<RestaurantsRecord> list,
  List<RestaurantsRecord> searchResult,
) {
  return searchResult.length > 0 ? searchResult : list;
}

List<String> getUniqueCategories(List<String>? categories) {
  return categories!.toSet().toList();
}

double? getAverageRating(List<int> ratings) {
  int sum = ratings.reduce((dynamic value, dynamic element) => value + element);
  double average = sum / ratings.length;

  return double.parse(average.toStringAsFixed(1));
}
