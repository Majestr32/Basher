import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:qr/qr.dart';

import '../theme/colors.dart';


class Qr extends StatelessWidget {
  late QrImage _qrImage;
  final String content;
  final double? size;
  final Color backgroundColor;
  final Color mainColor;
  Qr({Key? key, required this.content, this.size, required this.backgroundColor, required this.mainColor}) : super(key: key){
    final qrCode = QrCode(4, QrErrorCorrectLevel.L)..addData(content);
    _qrImage = QrImage(qrCode);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: QrPainter(
        size: size,
        mainColor: mainColor,
        backgroundColor: backgroundColor,
        qrImage: _qrImage
      ),
    );
  }
}

class QrPainter extends CustomPainter{
  final double? size;
  final QrImage qrImage;
  final Color backgroundColor;
  final Color mainColor;

  @override
  void paint(Canvas canvas, Size size) {
    final pixelWidth = this.size ?? size.width / qrImage.moduleCount;
    final blackBrush = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = pixelWidth
        ..color = backgroundColor;

    final whiteBrush = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = pixelWidth
      ..color = mainColor;

    for (var x = 0; x < qrImage.moduleCount; x++) {
      for (var y = 0; y < qrImage.moduleCount; y++) {
        canvas.drawRect(Rect.fromLTWH(x.toDouble()*pixelWidth, y.toDouble()*pixelWidth, 1, 1), qrImage.isDark(y, x) ? blackBrush : whiteBrush);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  const QrPainter({
    required this.qrImage,
    required this.size,
    required this.backgroundColor,
    required this.mainColor
  });
}