import 'answers.dart';

class TestData{
  int _questionIndex=0;

  List<Question> _questionBank= [
    Question(
      questionText: '1. Biliyor musun Dünya’nın çekirdek kısmı 5500 santigrat dereceymiş. Bu sıcaklığın anlamı Güneş’in yüzey sıcaklığı kadar olmasıymış.',
      questionAnswer: true),
    Question(
      questionText: "2. Bir insan hayatı boyunca ortalama 250.000 kez esnermiş.",
      questionAnswer: true),
    Question(
      questionText: '3. Korkma ama Dünya’ya her gün 8.600.000 yıldırım düşermiş. Bunun çoğu okyanusların üzerinde olurmuş.',
      questionAnswer: true),
    Question(
      questionText: '4. Dünya’da ilk canlılar ne zaman yaşamış diye düşünüyorsan cevabı burada! İlk canlılık örneklerine 3.5 milyar yıl önce Avusturalya’da rastlanmış. O dönemde atmosferde oksijen olmadığı düşünülüyormuş.',
      questionAnswer: true),
    Question(
      questionText: '5. Dünyada her gün yaklaşık 200.000 bebek doğuyormuş. ',
      questionAnswer: true),
    Question(
      questionText: '6. Avustralya kıtasının çok ilginç bir özelliği varmış. Her yıl 7 santimetre kuzeye kayıyormuş.', 
      questionAnswer: true) 
  ];

  String getQuestionText(){
    return _questionBank[_questionIndex].questionText;
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionIndex].questionAnswer;
  }

  void nextQuestion(){
    if(_questionIndex +1 <= _questionBank.length ){ //.lenght listenin uzunluğunu getiriri.
      _questionIndex++;
    }
  }

  bool isTestDone (){
    if(_questionIndex+1  >= _questionBank.length ){
      return true;
    }else{
      return false;
    }
  }

  void resetTest(){
    _questionIndex=0;
  }
}