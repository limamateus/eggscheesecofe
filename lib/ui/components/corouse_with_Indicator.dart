import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWithIndicator extends StatefulWidget {
  List<String> imagens;
  CarouselWithIndicator({super.key, required this.imagens});
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int activeIndex = 0; // Índice atual do carrossel

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index; // Atualiza o indicador
              });
            },
          ),
          items: widget.imagens.map((url) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(url, fit: BoxFit.cover, width: double.infinity),
            );
          }).toList(),
        ),
        const SizedBox(height: 10),
        _buildIndicator(), // Indicador de bolinhas
      ],
    );
  }

  Widget _buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: widget.imagens.length,
      effect: ExpandingDotsEffect(
        dotWidth: 8,
        dotHeight: 8,
        activeDotColor: Colors.blue,
        dotColor: Colors.grey.shade400,
      ),
    );
  }
}
