import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageTitle extends StatelessWidget {
  final String? imagePath;
  final String title;
  final bool useAsset;
  const PageTitle(
      {Key? key, required this.title, this.imagePath, this.useAsset = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text.rich(TextSpan(
            children: <InlineSpan>[
              WidgetSpan(
                  child: !this.useAsset
                      ? Image.asset(
                          this.imagePath!,
                          fit: BoxFit.cover,
                          scale: 2,
                        )
                      : SvgPicture.asset(this.imagePath!)
                  // FaIcon(FontAwesomeIcons.truck),
                  ),
              WidgetSpan(child: SizedBox(width: 8)),
              WidgetSpan(
                child: Text(
                  this.title,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
