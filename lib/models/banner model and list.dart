class ImageModel {
  String imageUrl;
  String imageTitle;
  String imageSubTitle;

  ImageModel({
    required this.imageUrl,
    required this.imageTitle,
    required this.imageSubTitle,
  });
}

List<ImageModel> imageList = [
  ImageModel(
    imageUrl: "images/image.png",
    imageTitle: "Image One title",
    imageSubTitle: "Image one subtitle",
  ),
  ImageModel(
    imageUrl: "images/image2.png",
    imageTitle: "Image Two title",
    imageSubTitle: "Image two subtitle",
  ),
  ImageModel(
    imageUrl: "images/image.png",
    imageTitle: "Image Three title",
    imageSubTitle: "Image three subtitle",
  ),
  ImageModel(
    imageUrl: "images/image2.png",
    imageTitle: "Image Four title",
    imageSubTitle: "Image four subtitle",
  ),
];
