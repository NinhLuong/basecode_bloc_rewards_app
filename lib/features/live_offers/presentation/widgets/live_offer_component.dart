import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/shared/widgets/components/app_container.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/config/paths/images_paths.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/live_offers/domain/entities/live_offer_entity.dart';

class LiveOfferComponent extends StatelessWidget {
  final LiveOfferEntity liveOffer;

  const LiveOfferComponent({super.key, required this.liveOffer});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 80.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Text(DateFormat.Hm().format(liveOffer.date!),
                  style: context.f16700),
              Text(DateFormat('d MMM').format(liveOffer.date!),
                  style: context.f10500?.copyWith(color: AppColors.lightGrey)),
            ],
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              border: BorderDirectional(
                start: BorderSide(
                  color: AppColors.grey,
                  width: 1.0,
                ),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: AppContainer(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              // width: 500.w,
              child: Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(ImagesPaths.profileSvg),
                      const SizedBox(width: 10),
                      Expanded(
                          child: Text(liveOffer.username,
                              overflow: TextOverflow.ellipsis,
                              style: context.f16600)),
                      Text("${liveOffer.points} ${S.of(context).pts}",
                          style: context.f16700
                              ?.copyWith(color: AppColors.yellow)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: SvgPicture.asset(ImagesPaths.ringSvg,
                              height: 15)),
                      const SizedBox(width: 10),
                      Flexible(
                          child: Text(liveOffer.type, style: context.f14400)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
