class LogEntry {
  final String? plateNumber;
  final String? vehicleMark;
  final int? cardNumber;
  final String? company;
  final String? destination;

  LogEntry({
    this.plateNumber,
    this.cardNumber,
    this.company,
    this.destination,
    this.vehicleMark,
  });

  factory LogEntry.fromMap(Map<String, dynamic> map) => LogEntry(
    plateNumber: map['plateNumber'],
    vehicleMark: map['vehicleMark'],
    cardNumber: map['cardNumber'],
    company: map['company'],
    destination: map['destination'],
  );

  Map<String, dynamic> toMap() => {
    'plateNumber': plateNumber,
    'vehicleMark': vehicleMark,
    'cardNumber': cardNumber,
    'company': company,
    'destination': destination,
  };
}
