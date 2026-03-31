import 'package:flutter/material.dart';

class SessionReport{
  final String id;
  final DateTime startTime;
  final DateTime endTime;
  final bool wasCompleted;
  final bool revision;
  final String? topic;
  final String type;

  SessionReport({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.wasCompleted,
    required this.revision,
    this.topic,
    required this.type

  });
}
