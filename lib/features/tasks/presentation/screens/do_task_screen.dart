import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:magic_rewards/shared/widgets/components/app_button.dart';
import 'package:magic_rewards/shared/widgets/components/app_container.dart';
import 'package:magic_rewards/shared/widgets/components/app_scaffold.dart';
import 'package:magic_rewards/shared/widgets/components/app_text_field.dart';
import 'package:magic_rewards/shared/widgets/components/custom_appbar.dart';
import 'package:magic_rewards/shared/widgets/components/failure_component.dart';
import 'package:magic_rewards/shared/widgets/components/show_toast.dart';
import 'package:magic_rewards/shared/extensions/image_extensions/images_extension.dart';
import 'package:magic_rewards/shared/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/config/paths/images_paths.dart';
import 'package:magic_rewards/config/di/injectable_config.dart';
import 'package:magic_rewards/config/utils/app_validator.dart';
import 'package:magic_rewards/core/presentation/bloc/base/base_state.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/features/tasks/domain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/features/tasks/presentation/blocs/do_task_bloc/do_task_bloc.dart';

class DoTaskScreen extends StatefulWidget {
  final CommentEntity comment;
  final String taskUrl;

  const DoTaskScreen({super.key, required this.comment, required this.taskUrl});

  @override
  State<DoTaskScreen> createState() => _DoTaskScreenState();
}

class _DoTaskScreenState extends State<DoTaskScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _urlController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _dateController = TextEditingController();

  DateTime? timeStamp;

  final ImagePicker picker = ImagePicker();

  final ValueNotifier<XFile?> image = ValueNotifier<XFile?>(null);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        titleText: S.of(context).doTask,
        withBack: true,
      ),
      body: BlocProvider(
        create: (_) => getIt<DoTaskBloc>(),
        child: BlocListener<DoTaskBloc, BaseState<void>>(
          listener: (context, state) {
            if (state.isError) {
              FailureComponent.handleFailure(
                  context: context, failure: state.failure);
            }
            if (state.isSuccess) {
              showToast(message: S.of(context).success);
              context.pop();
            }
          },
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    buildCommentBox(context),
                    const SizedBox(height: 20),
                    AppButton(
                        text: S.of(context).clickHereToCopyTheTaskUrl,
                        onPressed: () async {
                          await Clipboard.setData(
                              ClipboardData(text: widget.taskUrl));
                          showToast(message: S.current.textCopiedToClipboard);
                        }),
                    const SizedBox(height: 20),
                    AppTextField(
                      controller: _nameController,
                      labelText: S.of(context).name,
                      validator: AppValidator(validators: [
                        InputValidator.requiredField,
                      ]).validate,
                    ),
                    AppTextField(
                      controller: _urlController,
                      labelText: S.of(context).url,
                      validator: AppValidator(validators: [
                        InputValidator.requiredField,
                        InputValidator.url
                      ]).validate,
                    ),
                    AppTextField(
                      controller: _emailController,
                      labelText: S.of(context).email,
                      validator: AppValidator(validators: [
                        InputValidator.requiredField,
                        InputValidator.email
                      ]).validate,
                    ),
                    AppTextField(
                      controller: _dateController,
                      labelText: S.of(context).date,
                      readOnly: true,
                      onTap: () async {
                        DateTime now = DateTime.now();
                        TimeOfDay? time = await showTimePicker(
                          context: context,
                          initialTime: const TimeOfDay(hour: 0, minute: 0),
                        );
                        if (time != null) {
                          timeStamp = DateTime(
                            now.year,
                            now.month,
                            now.day,
                            time.hour,
                            time.minute,
                          );
                          _dateController.text = timeStamp!.toString();
                        }
                      },
                      validator: AppValidator(validators: [
                        InputValidator.requiredField,
                      ]).validate,
                    ),
                    _buildImagePicker(),
                    const SizedBox(height: 20),
                    BlocBuilder<DoTaskBloc, BaseState<void>>(
                      builder: (context, state) {
                        return AppButton(
                            onPressed: () => _onPressed(context),
                            type: AppButtonType.solidYellow,
                            loading: state.isLoading,
                            text: S.of(context).confirm);
                      },
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCommentBox(BuildContext context) {
    return AppContainer(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(widget.comment.text, style: context.f16400),
          const SizedBox(height: 20),
          AppButton(
              onPressed: () async {
                await Clipboard.setData(
                    ClipboardData(text: widget.comment.text));
                showToast(message: S.current.textCopiedToClipboard);
              },
              type: AppButtonType.transparentYellow,
              text: S.of(context).copyComment)
        ],
      ),
    );
  }

  void _onPressed(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      if (timeStamp == null) {
        showToast(message: S.of(context).pleaseSetTheTimestamp);
        return;
      } else if (image.value == null) {
        showToast(message: S.of(context).pleasePickAnImage);
        return;
      }
      context.read<DoTaskBloc>().add(DoTaskButtonPressedEvent(
            taskId: widget.comment.taskId,
            commentId: widget.comment.id,
            name: _nameController.text,
            url: _urlController.text,
            email: _emailController.text,
            text: widget.comment.text,
            image: image.value!.toFile,
            timeStamp: timeStamp!,
          ));
    }
  }

  Widget _buildImagePicker() {
    return SizedBox(
      height: 250,
      child: AppContainer(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          child: ElevatedButton(
            onPressed: () async {
              image.value = await picker.pickImage(source: ImageSource.gallery);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              shadowColor: Colors.transparent,
              backgroundColor: Colors.transparent,
              elevation: 0,
              padding: EdgeInsets.zero,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ValueListenableBuilder<XFile?>(
                valueListenable: image,
                builder: (BuildContext context, XFile? value, child) {
                  return image.value == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(ImagesPaths.addImagePng, width: 250.w),
                            const SizedBox(height: 20),
                            Text("Choose Image to Upload",
                                style: context.f16700)
                          ],
                        )
                      : Image.file(image.value!.toFile);
                },
              ),
            ),
          )),
    );
  }
}
