import 'package:care_and_cure/Common/Widgets/common_text.dart';
import 'package:care_and_cure/Data/sharedPref/shared_pref.dart';
import 'package:care_and_cure/Extention/media_query_extention.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HospitalProfileScreen extends StatefulWidget {
  const HospitalProfileScreen({super.key});

  @override
  State<HospitalProfileScreen> createState() => _HospitalProfileScreenState();
}

class _HospitalProfileScreenState extends State<HospitalProfileScreen> {
  int activeIndex = 0;
  final controller = CarouselController();
  List<String> urlImages = [
    SharedPref.getHospitalImage,
    SharedPref.getHospitalCertificate,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: urlImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = urlImages[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                      height: context.screenHeight * 0.5,
                      autoPlay: true,
                      enableInfiniteScroll: false,
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index))),
              const SizedBox(height: 15),
              buildIndicator(),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: context.screenWidth * 0.9,
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonText(data: "Hospital Name", size: 18),
                            commonText(data: "Mobile No", size: 18),
                            commonText(data: "Email", size: 18),
                            commonText(data: "Address", size: 18),
                            commonText(data: "Upi Id", size: 18),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonText(
                                data: ":- ${SharedPref.getHospitalName}",
                                size: 18),
                            commonText(
                                data:
                                    ":- ${SharedPref.getHospitalMobileNumber}",
                                size: 18),
                            commonText(
                                data: ":- ${SharedPref.getHospitalEmail}",
                                size: 18),
                            commonText(
                                data: ":- ${SharedPref.getHospitalAddress}",
                                size: 18),
                            commonText(
                                data: ":- ${SharedPref.getHospitalUpiId}",
                                size: 18),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: animateToSlide,
        effect: ExpandingDotsEffect(
            dotWidth: 15, activeDotColor: Colors.blue.shade200),
        activeIndex: activeIndex,
        count: urlImages.length,
      );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String urlImage, int index) => Image(
      image: NetworkImage(urlImage),
      fit: BoxFit.cover,
    );
