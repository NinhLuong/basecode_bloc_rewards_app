import 'package:flutter/material.dart';
import 'package:bloc_rewards/config/secret/api/apis_urls.dart';
import 'package:bloc_rewards/shared/widgets/components/webview_container.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WebViewContainer(
        title: "Privacy Policy", bigFont: true, url: ApisUrls.privacyPolicy);
  }
}
