import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';



void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.white,
    ),
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mathematics'),
        ),
        body: const MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('The four main laws of indices are:',style: TextStyle(fontSize: 20.0,color: Colors.black),),
        Expanded(
          child: MathEquation(equation: r"""<p>\[ x^{a}\times x^{b}=x^{a+b} \]</p>""",),
        ),
        Expanded(
          child: MathEquation(equation: r"""<p>\[ \frac{x^{a}}{x^{b}}=x^{a-b} \]</p>""",),
        ),
        Expanded(
          child: MathEquation(equation: r"""<p>\[ (x^{a})^{b}=x^{ab} \]</p>""",),
        ),
        Expanded(
          child: MathEquation(equation: r"""<p>\[ x^{-a}=\frac{1}{x^{a}}  \]</p>""",),
        ),
        Expanded(
          child: MathEquation(equation: r"""<p>\[ (\frac{x}{y})^{-a}=(\frac{y}{a})^{a} \]</p>""",),
        ),
        Expanded(
          child: MathEquation(equation: r"""<p>\[ x^{\frac{1}{n}}=\sqrt[n]{x}  \]</p>""",),
        ),
        const Expanded(
          child: Text(
            'One jajjs hsjnbjnbjas jxsjjjas jkhahjkhkhkjh hsgvxyfghjvx sgxhg gxgygzy gjyzhvfjgfysxj gfhjgfj',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class MathEquation extends StatelessWidget {

  final String equation;

  MathEquation({required this.equation});

  @override
  Widget build(BuildContext context) {
    return TeXView(
      child: TeXViewDocument(equation),
      style: TeXViewStyle(
          fontStyle: TeXViewFontStyle(fontSize: 20),
          padding: const TeXViewPadding.all(10)),
    );
  }
}
