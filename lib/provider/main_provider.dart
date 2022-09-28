import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier {
  bool isLoading = false;
  bool isToggle = false;
  int tapIndex = 0;
  String tripId = "";
  List<String> taHandOmDinBatQuestionAnswers = [];
  List<String> taHandOmDinBatQuestionIDs = [];
  double geoRadius = 100;

  // LatLng? geoFencePosition;
  //
  // changeGeoFencePosition(LatLng newPos) {
  //   geoFencePosition = newPos;
  //   notifyListeners();
  // }

  changeGeoRadius(double val) {
    geoRadius = val;
    notifyListeners();
  }

  toggleDone() {
    isToggle != isToggle;
    notifyListeners();
  }

  changeIsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  addDataIntoTaHandOmDinBatQuestionAnswers(String val) {
    taHandOmDinBatQuestionAnswers.add(val);
  }

  addDataIntoTaHandOmDinBatQuestionIDs(String val) {
    taHandOmDinBatQuestionIDs.add(val);
  }

  addDataIntoSpecificIndexTaHandOmDinBatQuestionAnswers(String val, int index) {
    taHandOmDinBatQuestionAnswers.removeAt(index);
    taHandOmDinBatQuestionAnswers.insert(index, val);
    notifyListeners();
  }

  removeDataFromTaHandOmDinBatQuestionAnswers() {
    taHandOmDinBatQuestionAnswers.clear();
  }

  removeDataFromTaHandOmDinBatQuestionIDs() {
    taHandOmDinBatQuestionIDs.clear();
  }

  changeTripId(id) {
    tripId = id;
    notifyListeners();
  }

  changeIndex(int value) {
    tapIndex = value;
    notifyListeners();
  }

  //Position
  String? position;

  getPosition(value) {
    position = value;
    notifyListeners();
  }
}
