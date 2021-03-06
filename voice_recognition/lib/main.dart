import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:speech_recognition/speech_recognition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VoiceHome(),
    );
  }
}

class VoiceHome extends StatefulWidget {
  @override
  _VoiceHomeState createState() => _VoiceHomeState();
}

class _VoiceHomeState extends State<VoiceHome> {
  SpeechRecognition _speechRecognition;
  bool _isAvailable = false;
  bool _isListening = false;

  String resultText = "";
  String resultText2 = "";
  String resultText3 = "";
  int newList = 1;
  int count = 0;

  @override
  void initState() {
    super.initState();
    initSpeechRecognizer();
  }

  void initSpeechRecognizer() {
    _speechRecognition = SpeechRecognition();

    _speechRecognition.setAvailabilityHandler(
      (bool result) => setState(() => _isAvailable = result),
    );

    _speechRecognition.setRecognitionStartedHandler(
      () => setState(() => _isListening = true),
    );
    _speechRecognition.setRecognitionResultHandler(
      (String speech) => setState(() => resultText = speech),
    );
//    if (count == 1) {
//      _speechRecognition.setRecognitionResultHandler(
//        (String speech) => setState(() => resultText = speech),
//      );
//    } else if (count == 2) {
//      _speechRecognition.setRecognitionResultHandler(
//        (String speech) => setState(() => resultText2 = speech),
//      );
//    } else if (count == 3) {
//      _speechRecognition.setRecognitionResultHandler(
//        (String speech) => setState(() => resultText3 = speech),
//      );
//    }
    _speechRecognition.setRecognitionCompleteHandler(
      () => setState(() => _isListening = false),
    );

    _speechRecognition.activate().then(
          (result) => setState(() => _isAvailable = result),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(Icons.cancel),
                  mini: true,
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {
                    if (_isListening)
                      _speechRecognition.cancel().then(
                            (result) => setState(() {
                              _isListening = result;
                              resultText = "";
                            }),
                          );
                  },
                ),
                FloatingActionButton(
                  child: Icon(Icons.mic),
                  onPressed: () {
                    if (_isAvailable && !_isListening)
                      _speechRecognition
                          .listen(locale: "en_US")
                          .then((result) => print('$result'));
                    count++;
                  },
                  backgroundColor: Colors.pink,
                ),
                FloatingActionButton(
                  child: Icon(Icons.stop),
                  mini: true,
                  backgroundColor: Colors.deepPurple,
                  onPressed: () {
                    if (_isListening)
                      _speechRecognition.stop().then(
                            (result) => setState(() => _isListening = result),
                          );
                  },
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.cyanAccent[100],
                borderRadius: BorderRadius.circular(6.0),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 12.0,
              ),
              child: Text(
                resultText,
                style: TextStyle(fontSize: 24.0),
              ),
//              child: ListView.builder(
//                  itemCount: newList,
//                  itemBuilder: (BuildContext context, int Index) {
//                    return Row(
//                      children: <Widget>[
//                        Column(
//                          children: <Widget>[
//                            Container(
//                              decoration: new BoxDecoration(
//                                border: new Border.all(color: Colors.grey[500]),
//                                color: Colors.red,
//                              ),
//                              child: Text(
//                                '$resultText',
//                                style: TextStyle(fontSize: 24.0),
//                              ),
//                            ),
//                          ],
//                        ),
//                        Column(
//                          children: <Widget>[
//                            Container(
//                              decoration: new BoxDecoration(
//                                border: new Border.all(color: Colors.grey[500]),
//                                color: Colors.red,
//                              ),
//                              child: Text(
//                                '$resultText2',
//                                style: TextStyle(fontSize: 24.0),
//                              ),
//                            ),
//                          ],
//                        ),
//                        Column(
//                          children: <Widget>[
//                            Container(
//                              decoration: new BoxDecoration(
//                                border: new Border.all(color: Colors.grey[500]),
//                                color: Colors.red,
//                              ),
//                              child: Text(
//                                '$resultText3',
//                                style: TextStyle(fontSize: 24.0),
//                              ),
//                            ),
//                          ],
//                        ),
//                      ],
//                    );
//                  }),
            ),
          ],
        ),
      ),
    );
  }
}
//
//  hsjsj
////        child: Column(
////          children: <Widget>[
////            Row(
////              children: <Widget>[
////                Column(
////                  children: <Widget>[
////                    Row(
////                      children: <Widget>[
////                        IconButton(
////                            icon: Icon(Icons.mic),
////                            onPressed: () {
////                              if (_isAvailable && !_isListening)
////                                _speechRecognition
////                                    .listen(locale: "en_US")
////                                    .then((result) => result = ak);
////                            }),
////                        Text('$ak'),
////                      ],
////                    ),
////                  ],
////                ),
////              ],
////            ),
////          ],
////        ),
////      ),
////    );
////  }
////}

//ListView.builder(
//itemCount: newList,
//itemBuilder: (BuildContext context, int Index) {
//return Row(
//children: <Widget>[
//Column(
//children: <Widget>[
//Text(
//'$resultText',
//style: TextStyle(fontSize: 24.0),
//),
//],
//),
//
//],
//);
//}),

//import 'package:flutter/material.dart';
//import 'package:speech_recognition/speech_recognition.dart';
//
//void main() {
//  runApp(new MyApp());
//}
//
//const languages = const [
//  const Language('Francais', 'fr_FR'),
//  const Language('English', 'en_US'),
//  const Language('Pусский', 'ru_RU'),
//  const Language('Italiano', 'it_IT'),
//  const Language('Español', 'es_ES'),
//  const Language('Bangla', 'bn_BD'),
//];
//
//class Language {
//  final String name;
//  final String code;
//
//  const Language(this.name, this.code);
//}
//
//class MyApp extends StatefulWidget {
//  @override
//  _MyAppState createState() => new _MyAppState();
//}
//
//class _MyAppState extends State<MyApp> {
//  SpeechRecognition _speech;
//
//  bool _speechRecognitionAvailable = false;
//  bool _isListening = false;
//
//  String transcription = '';
//
//  //String _currentLocale = 'en_US';
//  Language selectedLang = languages.first;
//
//  @override
//  initState() {
//    super.initState();
//    activateSpeechRecognizer();
//  }
//
//  // Platform messages are asynchronous, so we initialize in an async method.
//  void activateSpeechRecognizer() {
//    print('_MyAppState.activateSpeechRecognizer... ');
//    _speech = new SpeechRecognition();
//    _speech.setAvailabilityHandler(onSpeechAvailability);
//    _speech.setCurrentLocaleHandler(onCurrentLocale);
//    _speech.setRecognitionStartedHandler(onRecognitionStarted);
//    _speech.setRecognitionResultHandler(onRecognitionResult);
//    _speech.setRecognitionCompleteHandler(onRecognitionComplete);
////    _speech.setErrorHandler(errorHandler);
//    _speech
//        .activate()
//        .then((res) => setState(() => _speechRecognitionAvailable = res));
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('SpeechRecognition'),
//          actions: [
//            new PopupMenuButton<Language>(
//              onSelected: _selectLangHandler,
//              itemBuilder: (BuildContext context) => _buildLanguagesWidgets,
//            )
//          ],
//        ),
//        body: new Padding(
//            padding: new EdgeInsets.all(8.0),
//            child: new Center(
//              child: new Column(
//                mainAxisSize: MainAxisSize.min,
//                crossAxisAlignment: CrossAxisAlignment.stretch,
//                children: [
//                  new Expanded(
//                      child: new Container(
//                          padding: const EdgeInsets.all(8.0),
//                          color: Colors.grey.shade200,
//                          child: new Text(transcription))),
//                  _buildButton(
//                    onPressed: _speechRecognitionAvailable && !_isListening
//                        ? () => start()
//                        : null,
//                    label: _isListening
//                        ? 'Listening...'
//                        : 'Listen (${selectedLang.code})',
//                  ),
//                  _buildButton(
//                    onPressed: _isListening ? () => cancel() : null,
//                    label: 'Cancel',
//                  ),
//                  _buildButton(
//                    onPressed: _isListening ? () => stop() : null,
//                    label: 'Stop',
//                  ),
//                ],
//              ),
//            )),
//      ),
//    );
//  }
//
//  List<CheckedPopupMenuItem<Language>> get _buildLanguagesWidgets => languages
//      .map((l) => new CheckedPopupMenuItem<Language>(
//            value: l,
//            checked: selectedLang == l,
//            child: new Text(l.name),
//          ))
//      .toList();
//
//  void _selectLangHandler(Language lang) {
//    setState(() => selectedLang = lang);
//  }
//
//  Widget _buildButton({String label, VoidCallback onPressed}) => new Padding(
//      padding: new EdgeInsets.all(12.0),
//      child: new RaisedButton(
//        color: Colors.cyan.shade600,
//        onPressed: onPressed,
//        child: new Text(
//          label,
//          style: const TextStyle(color: Colors.white),
//        ),
//      ));
//
//  void start() => _speech
//      .listen(locale: selectedLang.code)
//      .then((result) => print('_MyAppState.start => result $result'));
//
//  void cancel() =>
//      _speech.cancel().then((result) => setState(() => _isListening = result));
//
//  void stop() => _speech.stop().then((result) {
//        setState(() => _isListening = result);
//      });
//
//  void onSpeechAvailability(bool result) =>
//      setState(() => _speechRecognitionAvailable = result);
//
//  void onCurrentLocale(String locale) {
//    print('_MyAppState.onCurrentLocale... $locale');
//    setState(
//        () => selectedLang = languages.firstWhere((l) => l.code == locale));
//  }
//
//  void onRecognitionStarted() => setState(() => _isListening = true);
//
//  void onRecognitionResult(String text) => setState(() => transcription = text);
//
//  void onRecognitionComplete() => setState(() => _isListening = false);
//
//  void errorHandler() => activateSpeechRecognizer();
//}
