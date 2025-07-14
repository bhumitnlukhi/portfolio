part of 'services.dart';

class ServiceDesktop extends StatelessWidget {
  const ServiceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.125)
          .copyWith(bottom: height * 0.2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomSectionHeading(text: '\nWhat I can do?'),
          Space.y(1.w)!,
          CustomSectionSubHeading(text: servicesSubHeading),
          Space.y(2.w)!,
          LayoutBuilder(
            builder: (context, constraints) {
              return Wrap(
                spacing: width * 0.03,
                runSpacing: height * 0.05,
                alignment: WrapAlignment.start,
                children: List.generate(
                  servicesUtils.length,
                      (index) => _ServiceCard(service: servicesUtils[index]),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
