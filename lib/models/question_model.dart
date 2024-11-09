class QuestionModel {
  const QuestionModel(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswerList() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
