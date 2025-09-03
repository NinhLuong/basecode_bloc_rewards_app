import 'dart:io';

import 'package:image_picker/image_picker.dart';

extension ImagePickerExtension on XFile {
  File get toFile => File(path);
}
