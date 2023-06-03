
import 'package:cloudinary/cloudinary.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadController extends GetxController {
  RxString imagePath = "".obs;
  final cloudinary = Cloudinary.signedConfig(
    apiKey: "188489993429478",
    apiSecret: "rLCldE4fhsd2bALQCy7pOERNFRE",
    cloudName: "douhpv6i7",
  );
  Future getImage(ImageSource source) async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: source);
    if (image != null) {
      imagePath.value = image.path.toString();
    } else {
      Get.snackbar("Hata", "Resim seçmediniz");
    }
  }
  Future<String?> uploadImage(file) async {
    final response = await cloudinary.upload(
        file: file,
        resourceType: CloudinaryResourceType.image,
        folder: "/buildings");

    return response.url;
  }
}
