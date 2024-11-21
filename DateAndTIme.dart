void dateAndTime() {
  DateTime now = DateTime.now();
  print("Current Date and Time: $now");

  // Formatting DateTime
  String formatted = "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}";
  print("Formatted DateTime: $formatted");

  // Parsing DateTime
  DateTime parsed = DateTime.parse("2024-12-25");
  print("Parsed Date: $parsed");

  // Date Manipulation
  DateTime future = now.add(Duration(days: 5));
  DateTime past = now.subtract(Duration(days: 10));
  print("5 Days Later: $future");
  print("10 Days Earlier: $past");

  // Difference between dates
  Duration difference = future.difference(past);
  print("Difference in Days: ${difference.inDays}");
}

void main() {
  // Calling the dateAndTime function
  dateAndTime();
}
