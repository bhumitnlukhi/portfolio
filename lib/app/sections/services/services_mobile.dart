part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(text: '\nMy Core Specializations'),
        Space.y(3.w),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: servicesSubHeading),
        ),
        Space.y(5.w),
        CarouselSlider.builder(
          itemCount: servicesUtils.length,
          itemBuilder: (context, index, _) => Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h),
            child: _ServiceCard(service: servicesUtils[index]),
          ),
          options: CarouselOptions(
            height: 45.h,
            viewportFraction: 0.7,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.easeInOut,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
        ),
      ],
    );
  }
}
