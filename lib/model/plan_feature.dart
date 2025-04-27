class PlanFeature {
  final String feature;
  final bool basicPlan;
  final bool premiumPlan;
  final bool ultimatePlan;

  PlanFeature({
    required this.feature,
    required this.basicPlan,
    required this.premiumPlan,
    required this.ultimatePlan,
  });

  factory PlanFeature.fromMap(Map<String, dynamic> map) {
    return PlanFeature(
      feature: map['Features'] ?? '',
      basicPlan: map['Basic Plan'] ?? false,
      premiumPlan: map['Premium Plan'] ?? false,
      ultimatePlan: map['Ultimate Plan'] ?? false,
    );
  }
}
