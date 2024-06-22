class Article {
  final String title;
  final String profile;
  final String image;
  final String location;
  final String author;
  final String likes;
  final String comments;
  final String shares;
  final double rating;
  bool isLiked = false;

  Article(this.title, this.profile, this.image, this.likes, this.comments, this.isLiked,
      this.location, this.shares, this.author, this.rating);
}

List<Article> articles = [
  Article(
      'TAJ MAHAL',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOQ0IvzNUnWt5nJVleQRi05iUlcXfOeHoxrpd15E99wrof7Q7GJsOL1mP1DQ809fz1v84&usqp=CAU',
      'https://skift.com/wp-content/uploads/2022/06/GettyImages-1208049833-scaled-e1654782364566-1536x1024.jpg',
      '31.3M', '392.4K', true,
      'Agra', '76.64K',
      'Hussain Mustafa',
      5),
  Article(
      'GOLDEN TEMPLE',
      'https://p.kindpng.com/picc/s/331-3313104_apollo-hires-real-asset-senior-hd-png-download.png',
      'https://www.puredestinations.co.uk/wp-content/uploads/2016/11/Golden-Temple-PD-BLOG.jpg',
      '21.32M', '412.4K', true,
      'Amritsar', '65.32K',
      'Joseph Morgan',
      5),

  Article(
      'MEENAKSHI TEMPLE',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8FXMeGjYBfyxfjc-MCvo390y6Ic5j7cC_BWK4Gy9SwPOPnEX2XiEhKKeEwRETvGTXX0I&usqp=CAU',
      'https://www.puredestinations.co.uk/wp-content/uploads/2016/11/meenakshi-temple-PD-BLOG.jpg',
      '549K', '55.6K', true,
      'Madurai',
      '2.05K', 'Ely Marya',
      4.5),
  Article(
      'MYSORE PALACE',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxapDwCeVLL0T69nhwV_BgqH9lztNDYQGhCbUVKHMgITKzGDlPsa55HS-6dqUdC8Qt5VU&usqp=CAU',
      'https://karnatakatourism.org/wp-content/uploads/2020/06/Mysuru-Palace-banner-1920_1100.jpg',
      '12.08M', '128.03K', true,
      'Mysore',
      '1.87K', 'Tim Salvatores', 5),
  Article(
      'GATEWAY OF INDIA',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpuTlDkqTub-W9PFYdpllQLu8sNPSS_YgMUn5O-yIsotI4jYHbYlk-TgUCo9mZNmhC0EU&usqp=CAU',
      'https://www.puredestinations.co.uk/wp-content/uploads/2016/11/gateway-to-india-PD-BLOG.jpg',
      '23.06M', '110.50K', true,
      'Mumbai',
      '17.40K', 'Cammy Lin', 4),
  Article(
      'RED FORT',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUtcO4YmGkZhf8rEs8DdPZYnLlPCpOF1pTMZMYf1lDHzaQFAqjUKPzRFdZaqDRuBuYKHo&usqp=CAU',
      'https://www.puredestinations.co.uk/wp-content/uploads/2016/11/red-fort-PD-BLOG.jpg',
      '19.32M', '134.30K', true,
      'New Delhi',
      '15.48', 'Marina Stankovic', 4.5),
  Article(
      'HAWA MAHAL',
      'https://www.pngitem.com/pimgs/m/75-758282_walter-circle-person-photo-in-circle-hd-png.png',
      'https://www.puredestinations.co.uk/wp-content/uploads/2016/11/HAWA-MAHAL-PD-BLOG.jpg',
      '16.80M', '187.32K', true,
      'Jaipur',
      '24.4K', 'Luis Walter', 5),
  Article(
      'QUTUB MINAR',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREMzIENU9hYW01doaO7mjBDcGvgWJVcMsM-cS0FXWOxz3cUNCULBUrQshWAMNnTGX4TaQ&usqp=CAU',
      'https://www.puredestinations.co.uk/wp-content/uploads/2016/11/qutub-minar-PD-BLOG.jpg',
      '28.78M', '238.87K', true,
      'New Delhi',
      '43.54K', 'Taylor Kevin', 4.5),
  Article(
      'SANCHI STUPA',
      'https://p.kindpng.com/picc/s/442-4426396_profile-picture-woman-circle-hd-png-download.png',
      'https://www.puredestinations.co.uk/wp-content/uploads/2016/11/Sanchi-Stupi-PD-BLOG.jpg',
      '9.32M', '165.2K', true,
      'Sanchi',
      '32.2K', 'Andrea Williams', 4),
  Article(
      'CHARMINAR',
      'https://upload.wikimedia.org/wikipedia/commons/e/eb/Rubio_Circle.png',
      'https://www.puredestinations.co.uk/wp-content/uploads/2016/11/Charminar-PD-BLOG-1.jpg',
      '16.28M', '261.8K', true,
      'Hyderabad',
      '32.16K', 'Matt Henry', 4)

  //Image courtesy: https://www.puredestinations.co.uk/top-10-famous-monuments-to-visit-in-india/

];
