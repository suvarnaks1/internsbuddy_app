import 'package:flutter/material.dart';
import 'dart:math';

class RotationWidget extends StatefulWidget {
  const RotationWidget({super.key});

  @override
  _RotationWidgetState createState() => _RotationWidgetState();
}

class _RotationWidgetState extends State<RotationWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  final List<String> profileImages = [
    'assets/images/profile pic 2.png',
    'assets/images/Group 937.png',
    'assets/images/Mask Group1.png',
    'assets/images/Mask Group2.png',
    'assets/images/Mask Group.png',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final double outerRadius = screenWidth * 0.35;
    final double innerRadius = screenWidth * 0.2;

    return Container(
      width: screenWidth * 0.8,
      height: screenWidth * 0.8,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer dashed circle
          CustomPaint(
            size: Size(outerRadius * 2, outerRadius * 2),
            painter: DashedCirclePainter(),
          ),
          // Inner pink circle
          Container(
            width: innerRadius * 2.5,
            height: innerRadius * 2.5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(257, 235, 126, 162).withOpacity(0.1),
            ),
          ),
          // Central white circle
          Container(
            width: screenWidth * 0.30,
            height: screenWidth * 0.30,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
          ...List.generate(profileImages.length, (index) {
            final angle = (2 * pi / profileImages.length) * index;
            final double radius = outerRadius;

            double imageSize = screenWidth * 0.12;
            if (index == 0) {
              imageSize = screenWidth * 0.1;
            }
            if (index == 2 || index == 4) {
              imageSize = screenWidth * 0.1;
            }

            final double x = radius * cos(angle) + outerRadius - imageSize / 2;
            double y = radius * sin(angle) + outerRadius - imageSize / 2;

            if (index == 3) {
              y -= screenWidth * 0.02;
            }

            return Positioned(
              left: x,
              top: y,
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.rotate(
                    angle: -_controller.value * 2 * pi,
                    child: child,
                  );
                },
                child: ClipOval(
                  child: Image.asset(
                    profileImages[index],
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }),
          // Central profile image
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.rotate(
                  angle: _controller.value * 2 * pi, child: child);
            },
            child: CircleAvatar(
              radius: screenWidth * 0.1,
              backgroundImage: const AssetImage('assets/images/Avatar.png'),
            ),
          ),
          Positioned(
            top: outerRadius - innerRadius * 1.35,
            right: outerRadius - (screenWidth * 0.4) / 2,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: child,
                );
              },
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile pic 3.png',
                  width: screenWidth * 0.10,
                  height: screenWidth * 0.10,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Bottom image
          Positioned(
            top: outerRadius + innerRadius * 1.30 - screenWidth * 0.12,
            left: outerRadius - (screenWidth * 0.4) / 2,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * pi,
                  child: child,
                );
              },
              child: ClipOval(
                child: Image.asset(
                  'assets/images/Group 936.png',
                  width: screenWidth * 0.10,
                  height: screenWidth * 0.10,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Location icon
          Positioned(
            left: outerRadius +
                1.0 * outerRadius * cos(-pi / 4) -
                screenWidth * 0.04,
            top: outerRadius +
                1.0 * outerRadius * sin(-pi / 4) -
                screenWidth * 0.04,
            child: Icon(
              Icons.location_on,
              color: const Color.fromARGB(255, 212, 116, 148),
              size: screenWidth * 0.05,
            ),
          ),
          // Chat icon
          Positioned(
            left: outerRadius +
                0.5 * outerRadius * cos(3 * pi / 4) -
                screenWidth * 0.04,
            top: outerRadius +
                1.4 * outerRadius * sin(3 * pi / 4) -
                screenWidth * 0.04,
            child: Icon(
              Icons.chat_bubble,
              color: const Color.fromARGB(255, 228, 125, 159),
              size: screenWidth * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color.fromARGB(255, 226, 126, 159).withOpacity(0.5)
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    const double dashWidth = 20;
    const double dashSpace = 5;
    double startAngle = 0;
    final double radius = size.width / 2;

    while (startAngle < 2 * pi) {
      final x1 = size.width / 2 + radius * cos(startAngle);
      final y1 = size.height / 2 + radius * sin(startAngle);

      final x2 = size.width / 2 + radius * cos(startAngle + dashWidth / radius);
      final y2 =
          size.height / 2 + radius * sin(startAngle + dashWidth / radius);

      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);
      startAngle += (dashWidth + dashSpace) / radius;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
