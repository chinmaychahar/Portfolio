// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(_url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[300],
            title: const Text(
              'My Projects',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          body: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Check out some of my projects below:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url =
                      Uri.parse('https://github.com/chinmaychahar/OCR');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text('IMReader Tool'),
                      subtitle: Text(
                          'A tool that uses OCR with text to speech conversion using Tesseract.js and React Speech Kit for accessible image processing'),
                      trailing: Icon(Icons.link),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url =
                      Uri.parse('https://github.com/chinmaychahar/HackDSC');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text('RAAHI Android App'),
                      subtitle: Text(
                          'Developed  Women Mentorship mobile app prototype for using Java and Firebase'),
                      trailing: Icon(Icons.link),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url =
                      Uri.parse('https://github.com/chinmaychahar/SnapSun');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text('Snapsun'),
                      subtitle: Text(
                          'Developed a python script to extract timelapse videos of the Sun day-wise'),
                      trailing: Icon(Icons.link),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url =
                      Uri.parse('https://github.com/chinmaychahar/Benevole');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text('Benevole Android App'),
                      subtitle: Text(
                        'Developed a volunteering services app for Google Solution Challenge 2021',
                      ),
                      trailing: Icon(Icons.link),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse(
                      'http://www.ijsred.com/volume4/issue4/IJSRED-V4I4P50.pdf');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text('Research Article: Kandor Space Settlement'),
                      subtitle: Text(
                        'Proposed KANDOR as a viable settlement case study with a detailed analysis of its features',
                      ),
                      trailing: Icon(Icons.link),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final Uri _url = Uri.parse(
                      'https://github.com/chinmaychahar/Hostile-News-Classification');
                  _launchUrl(_url);
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text('Hostile News Detection'),
                      subtitle: Text(
                        'Machine Learning project for hostile news detection in hindi',
                      ),
                      trailing: Icon(Icons.link),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
