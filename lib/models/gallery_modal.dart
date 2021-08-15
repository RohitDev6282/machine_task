class Gallery {
  final int id;
  final String image, title, sign, city,instagram,images;

  Gallery( {
    required this.id,
    required this.title,
    required this.image,
    required this.images,
    required this.sign,
    required this.city,
    required this.instagram
  });
}

List<Gallery> gallery = [
  Gallery(
    id: 1,
    image: "android/assests/images/image1.jpg",
    images: "android/assests/images/avatar1.png",
    title: "Caleb George",
    sign: "@xteemu",
    city: "Stackhom, Swedan",
    instagram: "instagram,com/xteemography"
  
  ),
  Gallery(
    id: 2,
    image: "android/assests/images/image2.jpg",
    images: "android/assests/images/profile2.jpg",
    title: "Temmu Pannanem",
     sign: "xteemu",
    city: "Stackhom, Swedan",
    instagram: "instagram,com/xteemography"
  
  ),
  Gallery(
    id: 3,
    image: "android/assests/images/image4.jpg",
    images: "android/assests/images/profile3.jpeg",
    title: "Leonard George",
     sign: "@xteemu",
    city: "Stackhom, Swedan",
    instagram: "instagram,com/xteemography"
  
  ),
  Gallery(
    id: 4,
    image: "android/assests/images/image5.jpg",
    images: "android/assests/images/avatar1.png",
    title: "George bush",
     sign: "@xteemu",
    city: "Stackhom, Swedan",
    instagram: "instagram,com/xteemography"
  
  ),
];
