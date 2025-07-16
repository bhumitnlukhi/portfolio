class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool});
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Flutter App Engineering',
    icon: 'assets/icons/flutter.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Custom app development', 'Advance animated app', 'Agile procedure'/*,'Test driven development'*/],
  ),
  ServicesUtils(
    name: 'Kotlin App Development',
    icon: 'assets/icons/android.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Kotlin', 'Jetpack Compose', 'Java'],
  ),
  ServicesUtils(
    name: 'ios App Development',
    icon: 'assets/icons/apple.svg',
    description: "Are you interested in the great Mobile app? Let's make it a reality.",
       // "We craft elegant, customized designs rooted in core design principles to meet your unique needs.",
    tool: ['Swift', 'UiKit', 'SwiftUi'],
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/icons/website.svg',
    description: "Have a website idea? Let’s bring it to life with smooth, high-performance web development.",
       // "Do you have an idea for your next great website? Let's make it a reality.",
    tool: ['Flutter', /*'Html,css,js',*/ 'Firebase implementation'],
  ),
];
