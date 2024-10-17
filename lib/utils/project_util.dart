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

  ProjectUtils(
      {required this.image,
      required this.title,
      required this.subtitle,
      this.githubLink,
      this.androidLink,
      this.iosLink,
      this.webLink});
}

//Personal projects
List<ProjectUtils> hobbyProjectUtils = [
  ProjectUtils(
      image: 'assets/projects/typeFight_proj.png',
      title: 'Typing game for IOS',
      subtitle:
          'A fun multiplayer game using Firebase, written in Swift using SwiftUI',
      githubLink: 'https://github.com/AkselLofstedtNielsen/WordGameIOS-V.1'),
  ProjectUtils(
      image: 'assets/projects/typeFight_proj.png',
      title: 'Typing game for IOS',
      subtitle:
          'A fun multiplayer game using Firebase, written in Swift using SwiftUI',
      githubLink: 'https://github.com/AkselLofstedtNielsen/WordGameIOS-V.1'),
  ProjectUtils(
      image: 'assets/projects/typeFight_proj.png',
      title: 'Typing game for IOS',
      subtitle:
          'A fun multiplayer game using Firebase, written in Swift using SwiftUI',
      githubLink: 'https://github.com/AkselLofstedtNielsen/WordGameIOS-V.1')
  //Add more personal projects here
];

//Work projects
List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/qmentoria_proj.png',
    title: 'Mentorship application',
    subtitle:
        'Qmentoria Mentorship by Consid, written in Kotlin using Jetpack compose. (Not yet published)',
  ),
  ProjectUtils(
    image: 'assets/projects/qmentoria_proj.png',
    title: 'Mentorship application',
    subtitle:
        'Qmentoria Mentorship by Consid, written in Kotlin using Jetpack compose. (Not yet published)',
  ),
  ProjectUtils(
    image: 'assets/projects/qmentoria_proj.png',
    title: 'Mentorship application',
    subtitle:
        'Qmentoria Mentorship by Consid, written in Kotlin using Jetpack compose. (Not yet published)',
  )
  //Add more work projects here
];
