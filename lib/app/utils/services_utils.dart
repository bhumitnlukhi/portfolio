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
    name: 'Flutter App Development',
    icon: 'assets/icons/flutter.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Custom app development', 'Advance animated app', 'Agile procedure','Test driven development'],
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: 'assets/icons/apple_android.svg',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
    tool: ['Android', 'ios', 'Swift', 'Kotlin/Java'],
  ),
  ServicesUtils(
    name: 'UI/UX Designing',
    icon: 'assets/icons/graphic.svg',
    description: "Crafting sleek, custom designs tailored to your needs with core design principles.",
       // "We craft elegant, customized designs rooted in core design principles to meet your unique needs.",
    tool: ['Adobe XD', 'Figma', 'Photoshop'],
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/icons/website.svg',
    description: "Have a website idea? Let’s bring it to life with smooth, high-performance web development.",
       // "Do you have an idea for your next great website? Let's make it a reality.",
    tool: ['React', 'Html,css,js', 'Js development'],
  ),
];
