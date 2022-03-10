import 'package:file_picker/file_picker.dart';

Future<PlatformFile?> pickImage({Function(String)? onFailed}) async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  if (result == null) {
    return null;
  }
  if (result.files.first.extension != 'png') {
    if (onFailed != null) {
      onFailed('現在サポートされている画像形式はpngのみです');
    }
    return null;
  }
  return result.files.first;
}
