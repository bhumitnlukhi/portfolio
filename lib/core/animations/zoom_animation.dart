import 'package:flutter/material.dart';
import 'package:mysite/app/widgets/custom_outline.dart';

class ZoomAnimations extends StatefulWidget {
  const ZoomAnimations({super.key});

  @override
  State<ZoomAnimations> createState() => _ZoomAnimationsState();
}

class _ZoomAnimationsState extends State<ZoomAnimations>
    with TickerProviderStateMixin {
  late final AnimationController _sizeController;
  late final AnimationController _alignController;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();

    _sizeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..forward();

    _sizeAnimation = Tween<double>(begin: 0.0, end: 0.2).animate(
      CurvedAnimation(
        parent: _sizeController,
        curve: const Interval(0.40, 0.75, curve: Curves.easeOut),
      ),
    );

    _alignController = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).animate(
      CurvedAnimation(
        parent: _alignController,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _sizeController.dispose();
    _alignController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return AnimatedBuilder(
      animation: _sizeController,
      builder: (_, __) {
        return SizedBox(
          width: size.width / 4.5,
          height: size.width / 4,
          child: AlignTransition(
            alignment: _alignAnimation,
            child: CustomOutline(
              strokeWidth: 5,
              radius: size.width * 0.2,
              padding: const EdgeInsets.all(5),
              width: size.width * _sizeAnimation.value,
              height: size.width * _sizeAnimation.value,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  theme.colorScheme.secondary,
                  theme.colorScheme.secondary.withAlpha(0),
                  theme.colorScheme.primary.withAlpha(25),
                  theme.colorScheme.primary,
                ],
                stops: const [0.2, 0.4, 0.6, 1],
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withValues(alpha: 0.8),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomLeft,
                    image: AssetImage('assets/imgs/bhumit_lukhi_2.jpg'),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
