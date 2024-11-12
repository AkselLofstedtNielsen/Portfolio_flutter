//All of the project informations

class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  //Optional links to the published site (Appstore, Playstore, Github?)
  final String? githubLink;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final bool? toBeReleased;

  ProjectUtils(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.githubLink,
      this.androidLink,
      this.iosLink,
      this.webLink,
      this.toBeReleased});
}

//Personal projects
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/portfolio_proj.png',
      title: 'The current Portfolio',
      subtitle:
          'Simple portfolio application, fully responsive. Made in Flutter with Dart',
      githubLink: 'https://github.com/AkselLofstedtNielsen/Portfolio_flutter'),
  ProjectUtils(
      image: 'assets/projects/typeFight_proj.png',
      title: 'Typing game for IOS',
      subtitle:
          'A fun multiplayer game using Firebase, written in Swift using SwiftUI',
      githubLink: 'https://github.com/AkselLofstedtNielsen/WordGameIOS-V.1'),
  ProjectUtils(
      image: 'assets/projects/fake_mecenat.png',
      title: 'Fake Mecenat App',
      subtitle:
          'A design challenge for myself, the mecenat app with some added functionality. Written in Kotlin with Jetpack Compose + Dagger Hilt',
      githubLink: 'https://github.com/AkselLofstedtNielsen/NotRealMecenat'),
  //Add more personal projects here
];

//Work projects
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/qmentoria_proj.png',
    title: 'Mentorship application',
    subtitle:
        'Qmentoria Mentorship by Consid, written in Kotlin using Jetpack compose. (Not yet published)',
    toBeReleased: true,
  ),
  ProjectUtils(
      image: 'assets/projects/webbApp_proj.png',
      title: 'Movie web app',
      subtitle: 'Collaborated Movie database web app. Made with JS and React',
      webLink: "https://aksellofstedtnielsen.github.io/WebbAppProject/",
      githubLink: 'https://github.com/AkselLofstedtNielsen/WebbAppProject')
  //Add more work projects here
];
