import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/config/styles/app_colors.dart';
import 'package:magic_rewards/config/styles/app_gradient.dart';
import 'package:magic_rewards/shared/widgets/components/app_button.dart';
import 'package:magic_rewards/shared/widgets/components/app_container.dart';
import 'package:magic_rewards/shared/widgets/components/app_network_image.dart';
import 'package:magic_rewards/shared/widgets/components/app_text_field.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/config/utils/app_validator.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/features/rewards/presentation/blocs/redeem_bloc/redeem_bloc.dart';
import 'package:magic_rewards/features/rewards/presentation/widgets/message_dialog.dart';

class PayoutCard extends StatelessWidget {
  final PayoutEntity payout;

  const PayoutCard({super.key, required this.payout});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.zero,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            elevation: 0,
            padding: EdgeInsets.zero,
          ),
          onPressed: () => showRedeemDialog(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                AppNetworkImage(
                  url: payout.thumbnail,
                  height: 50.w,
                  width: 50.w,
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        payout.title,
                        style:
                            context.f16700?.copyWith(color: AppColors.white1),
                      ),
                      Text(
                        payout.subtitle,
                        style:
                            context.f10500?.copyWith(color: AppColors.white1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Future<void> showRedeemDialog(BuildContext context) async {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController textController = TextEditingController();
    await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return buildRedeemDialog(formKey, textController);
        });
  }

  Widget buildRedeemDialog(
      GlobalKey<FormState> formKey, TextEditingController textController) {
    return BlocProvider(
      create: (context) => getIt<RedeemBloc>(),
      child:
          BlocBuilder<RedeemBloc, BaseState<void>>(builder: (context, state) {
        if (state.isSuccess) {
          return MessageDialog(
            message: S.of(context).yourRequestSuccess,
          );
        }
        if (state.isError) {
          return MessageDialog(
            message: state.failure.message,
            happy: false,
          );
        }
        return Dialog(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              gradient: AppGradients.dialogGradient,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(S.of(context).enterYourPayeerId, style: context.f20700),
                const SizedBox(height: 20),
                Form(
                  key: formKey,
                  child: AppTextField(
                    controller: textController,
                    fillColor: AppColors.blue.withOpacity(0.5),
                    hintStyle: context.f12400?.copyWith(color: AppColors.grey1),
                    style: context.f16600,
                    validator: AppValidator(validators: [
                      InputValidator.requiredField,
                    ]).validate,
                    hintText: S.of(context).payeerId,
                  ),
                ),
                const SizedBox(height: 20),
                if (state.isLoading) const CircularProgressIndicator(),
                if (state.isInit)
                  Row(
                    children: [
                      Expanded(
                        child: AppButton(
                            text: S.of(context).cancel,
                            onPressed: () {
                              context.pop();
                            }),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: AppButton(
                            text: S.of(context).confirm,
                            onPressed: () {
                              if (formKey.currentState?.validate() ?? false) {
                                context.read<RedeemBloc>().add(
                                    RedeemButtonPressedEvent(
                                        name: payout.id,
                                        value: textController.text));
                              }
                            }),
                      ),
                    ],
                  )
              ],
            ),
          ),
        );
      }),
    );
  }
}
