class FAQ {
  final String question;
  final String answer;

  FAQ({
    required this.question,
    required this.answer,
  });

  static FAQ fromMap(Map<String, String> data) {
    return FAQ(
      question: data["question"] ?? "",
      answer: data["answer"] ?? "",
    );
  }
}
