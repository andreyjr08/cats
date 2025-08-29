abstract class ConstantEndpoints {
  static const String baseUrl = "https://api.thecatapi.com/v1";
  static const String getBreeds = "/breeds";
  static const String getBreedImage = "/images";

  static List<String> get blackList => [ConstantEndpoints.getBreeds];
}
