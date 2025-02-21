import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PropertyImageCarousel extends HookWidget {
  final List<String> images;

  const PropertyImageCarousel({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState(0);
    final isFavorite = useState(false);

    return Stack(
      children: [
        // Image Carousel
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (page) => currentPage.value = page,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image.asset(images[index], fit: BoxFit.cover);
            },
          ),
        ),

        // Navigation buttons
        Positioned(
          top: MediaQuery.of(context).padding.top + 16,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _CircularButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              Row(
                children: [
                  _CircularButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 8),
                  _CircularButton(
                    icon:
                        isFavorite.value
                            ? const Icon(Icons.favorite, color: Colors.red)
                            : const Icon(Icons.favorite_border),
                    onPressed: () => isFavorite.value = !isFavorite.value,
                  ),
                ],
              ),
            ],
          ),
        ),

        // Page indicator
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      currentPage.value == index
                          ? Colors.white
                          : Colors.white.withAlpha(128),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _CircularButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;

  const _CircularButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(12),
        child: Icon(icon.icon, color: icon.color, size: 20),
      ),
    );
  }
}
