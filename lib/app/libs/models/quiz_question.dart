class QuizQuestion {
  final String title;
  final List<String> question;
  const QuizQuestion(this.title, this.question);

  List<String> get getSuffleList {
    final getSuffle = List.of(question);
    getSuffle.shuffle();
    return getSuffle;
  }
}
