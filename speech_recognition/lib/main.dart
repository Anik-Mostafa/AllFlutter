import 'package:flutter/material.dart';
import 'package:speech_recognition/speech_recognition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _speech = SpeechRecognition();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('speech_recognition'),
      ),
      body:

// The flutter app not only call methods on the host platform,
// it also needs to receive method calls from host.
        _speech.setAvailabilityHandler((bool result)
    => setState(() => _speechRecognitionAvailable = result));

// handle device current locale detection
    _speech.setCurrentLocaleHandler((String locale) =>
    setState(() => _currentLocale = locale));

    _speech.setRecognitionStartedHandler(()
    => setState(() => _isListening = true));

// this handler will be called during recognition.
// the iOS API sends intermediate results,
// On my Android device, only the final transcription is received
    _speech.setRecognitionResultHandler((String text)
    => setState(() => transcription = text));

    _speech.setRecognitionCompleteHandler(()
    => setState(() => _isListening = false));

// 1st launch : speech recognition permission / initialization
    _speech
        .activate()
        .then((res) => setState(() => _speechRecognitionAvailable = res));
//..

    speech.listen(locale:_currentLocale).then((result)=> print('result : $result'));

// ...

    speech.cancel();

// ||

    speech.stop();
    );
  }
}
