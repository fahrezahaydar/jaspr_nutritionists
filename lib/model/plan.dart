class Plan {
  final String title;
  final String label;
  final String subtitle;
  final Price price;
  final List<String> features;
  final String? special; // nullable because not all plans have 'special'

  Plan({
    required this.title,
    required this.label,
    required this.subtitle,
    required this.price,
    required this.features,
    this.special,
  });

  factory Plan.fromMap(Map<String, dynamic> map) {
    return Plan(
      title: map['title'] ?? '',
      label: map['label'] ?? '',
      subtitle: map['subtitle'] ?? '',
      price: Price.fromMap(map['price'] ?? {}),
      features: List<String>.from(map['features'] ?? []),
      special: map['special'],
    );
  }
}

class Price {
  final String yearly;
  final String monthly;

  Price({
    required this.yearly,
    required this.monthly,
  });

  factory Price.fromMap(Map<String, dynamic> map) {
    return Price(
      yearly: map['yearly'] ?? '',
      monthly: map['monthly'] ?? '',
    );
  }
}
