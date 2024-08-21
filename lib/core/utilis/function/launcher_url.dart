import 'package:bookly_app/core/utilis/function/custom_snack_par.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlCustom(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customsnackpar(context, 'cannot launch url$url');
    }
  }
}
