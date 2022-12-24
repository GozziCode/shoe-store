class SneakerModel {
  final String companyName, title, description, price, discountPrice, discount;
  final List<Map<String, dynamic>> images;

  SneakerModel(
      {required this.companyName,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPrice,
      required this.discount,
      required this.images});




  List dummyData = <SneakerModel>[
    SneakerModel(
        companyName: 'SNEAKER COMPANY',
        title: 'Fall Limited Edition Sneakers',
        description:
            " These low-profile sneakers are your perfect casual wear companion. Featuring a durable rubber outer sole, they’ll withstand everything the weather can offer.",
        price: "125.00",
        discountPrice: '250.00',
        discount: "50",
        images: [
          {
            "url": "assets/image/image-product-1-thumbnail.jpg",
          
          },
          {
            "url": "assets/image/image-product-2-thumbnail.jpg",
          
          },
          {
            "url": "assets/image/image-product-3-thumbnail.jpg",
            
          },
          {
            "url": "assets/image/image-product-4-thumbnail.jpg",
           
          }
        ])
  ];
}
List<Map<String, String>> thumbnails = [
  {
    "thumbnails": "assets/image/image-product-1-thumbnail.jpg",
    "image": "assets/image/image-product-1.jpg"
  },
  {
    "thumbnails": "assets/image/image-product-2-thumbnail.jpg",
    "image": "assets/image/image-product-2.jpg"
  },
  {
    "thumbnails": "assets/image/image-product-3-thumbnail.jpg",
    "image": "assets/image/image-product-3.jpg"
  },
  {
    "thumbnails": "assets/image/image-product-4-thumbnail.jpg",
    "image": "assets/image/image-product-4.jpg"
  }
];
