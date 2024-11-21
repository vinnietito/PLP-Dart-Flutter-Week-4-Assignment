void dateAndTime() {
  DateTime now = DateTime.now();

  //Formatting DateTime
  String formatted = "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}";
  print("Formatted DateTime: $formatted");

  //Parsing DateTime
  DateTime parsed = DateTime.parse("2024-12-25");
  print("Parsed Date: $parsed");

  //Date Manipulation
  DateTime future = now.add(Duration(days: 5));
  DateTime past = now.substract(Duration(days: 10));
  print("5 Days later: $future");
  print("10 Days Earlier: $past");

  //Diffrence between dates
  Duration diffrence = future.difference(past);
  print("Diffrence in Days: ")
}