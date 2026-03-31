import 'package:productivityapp/models/session_report.dart';

class SessionRepo {
  final List<SessionReport> _report = [];

  void saveSession(SessionReport session){
    _report.add(session);
  }

  List<SessionReport> getSession() {
    return _report;
    
  }
}