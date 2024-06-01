class Club {
  final String name;
  final String socialLink;
  final String logo;

  Club(this.name, this.socialLink, this.logo);
}

List<Club> clubs = [
  Club('Coding club', 'https://www.facebook.com/codingclubnits/',
      'https://i.imgur.com/2WSQg7J.png'),
  Club('ML club', 'https://mlclubnits.com/',
      'https://scontent.fmaa8-1.fna.fbcdn.net/v/t39.30808-6/307273837_462360645928078_5321154741155620014_n.png?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=PZ2eCjCHOUUQ7kNvgGVnXte&_nc_ht=scontent.fmaa8-1.fna&oh=00_AYAr2cnIaSOY2Oai9YNZrwN7y4zY0m7Meuv3q0nRuRnzeA&oe=665B31CD'),
  Club(
      'GDSC',
      'https://www.linkedin.com/company/gdscnits/?originalSubdomain=in',
      'https://media.licdn.com/dms/image/C4D0BAQGTNP9H2yylbA/company-logo_200_200/0/1630528085242/dsc_nit_silchar_logo?e=2147483647&v=beta&t=-XZKj2f8iAWKlupxwhE3mcN6aA4dCAn2-Rp62DzZdyI'),
  Club('NERDS', 'https://www.facebook.com/roboticsclub.nits/',
      'https://scontent.fmaa8-1.fna.fbcdn.net/v/t39.30808-6/300523139_442932447898417_8651922128331020596_n.png?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=N281k8Z9GIQQ7kNvgFyTM6M&_nc_ht=scontent.fmaa8-1.fna&oh=00_AYD55uvQWqdq3yofSgCUQrB92YY1A2UcFYWCLTF5HE-sDw&oe=665B39AA'),
  Club('Ecell', 'https://www.facebook.com/ecell.nit.silchar/',
      'https://scontent.fmaa8-1.fna.fbcdn.net/v/t39.30808-1/300959783_522430959886371_4513944340520056430_n.png?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=oFXRpxKFr1EQ7kNvgEXtStj&_nc_ht=scontent.fmaa8-1.fna&oh=00_AYDBJZ8C0ja6Q46-jT-sl89sD23fesxerZoaW-j178MhoA&oe=665B3693'),
  Club(
    'IEEE RAS',
    'https://www.linkedin.com/company/ieee-ras-silchar-subsection/?originalSubdomain=in',
    'https://media.licdn.com/dms/image/D560BAQH7KPuWM-hlVg/company-logo_200_200/0/1695147390230?e=1725494400&v=beta&t=ZRqzULnRH27hRmFoWAswIeWrRH1o05-2EgE8M-odhNY',
    // 'https://media.licdn.com/dms/image/C4D0BAQE_gW48jXs9XQ/company-logo_200_200/0/1671516995600?e=1724889600&v=beta&t=wIeLltQLlZlsK_JQKvrgRreFC_RLIi5lep031Cui90U'
  ),
  Club('Illuminits', 'https://www.facebook.com/Illuminits/',
      'https://scontent.fmaa8-1.fna.fbcdn.net/v/t39.30808-1/299189250_490409386421837_8077631014010795895_n.jpg?stp=dst-jpg_p480x480&_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=myApzn4ked4Q7kNvgE9I-Po&_nc_ht=scontent.fmaa8-1.fna&oh=00_AYAJUQRcrej_hSJNzHXDOsXnF1e2tabl6WQPbAt0iDW5XQ&oe=665B3F3E'),
  Club(
      'IEI Students chapter',
      'https://www.linkedin.com/company/iei-nitsilchar/?originalSubdomain=in',
      'https://media.licdn.com/dms/image/C4D0BAQE_gW48jXs9XQ/company-logo_200_200/0/1671516995600?e=1724889600&v=beta&t=wIeLltQLlZlsK_JQKvrgRreFC_RLIi5lep031Cui90U'),
  Club('Eco club', 'https://www.facebook.com/nitsecoclub/',
      'https://scontent.fmaa8-1.fna.fbcdn.net/v/t39.30808-6/277570083_312792314302482_5083829636329299668_n.png?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=574NY2b4GpUQ7kNvgG87w7f&_nc_ht=scontent.fmaa8-1.fna&oh=00_AYCuMqhcS3EuKlg5eHtu2mgtcbgo8sMQK5mUw3MntD1t3A&oe=665B2804'),
  Club('NITSMUN', 'https://www.nitsmun.in/',
      'https://scontent.fmaa8-1.fna.fbcdn.net/v/t39.30808-6/302104197_409809627919477_1132846094902222858_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=5f2048&_nc_ohc=mMgKDeAK9AIQ7kNvgGIdt1-&_nc_ht=scontent.fmaa8-1.fna&oh=00_AYBieD-MpeAnnrNnC4KwFHSAEzDnxE4JBINnSs9k22nsOg&oe=665B3697'),
  Club(
      'NSS',
      'https://www.linkedin.com/in/nss-nit-silchar-36526a2a0/?originalSubdomain=in',
      'https://media.licdn.com/dms/image/D5603AQGwlioY7kyY5Q/profile-displayphoto-shrink_800_800/0/1700203297199?e=1722470400&v=beta&t=RG5zqRDU5x5XZdSbY_dBqwrlO1qGRV1AdvDG4H-pcys'),
  Club('ASME', 'https://www.facebook.com/asme.nits/',
      'https://scontent.fmaa8-1.fna.fbcdn.net/v/t39.30808-6/313403677_464366789129681_7625027907530141892_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=5f2048&_nc_ohc=mI3qINUTDMoQ7kNvgHUftmS&_nc_ht=scontent.fmaa8-1.fna&oh=00_AYBFi95g9TTx5f4_hJjvmn9qCq9ZCBnphSkR3g4hcxkJRQ&oe=665B32F7'),
  Club('Obiettivo', 'https://www.instagram.com/obiettivo_official/?hl=en',
      'https://i.imgur.com/9YqP1M4.png'),
  Club(
    'Quiz club',
    'https://www.facebook.com/groups/quizclub.nits/',
    'https://i.imgur.com/3U9nAis.jpeg',
  ),
  Club(
    'Chess club',
    'https://www.facebook.com/groups/347046765470801/',
    // 'https://upload.wikimedia.org/wikipedia/en/thumb/7/71/National_Institute_Of_Technology_Silchar_Logo.svg/1920px-National_Institute_Of_Technology_Silchar_Logo.svg.png'
    'https://i.imgur.com/jnk82Qp.png',
  ),
  Club(
      'Finance club',
      'https://www.linkedin.com/company/financeclub-nitsilchar/?originalSubdomain=in',
      'https://i.imgur.com/pxJGYm5.png'),
  Club(
      'Gyansagar',
      'https://www.linkedin.com/company/gyansagar/?originalSubdomain=in',
      'https://media.licdn.com/dms/image/C4E0BAQEEBLM_sE88uQ/company-logo_200_200/0/1630629015772?e=2147483647&v=beta&t=QgFh5O1jdaHan7nkKjv8TCS4Z3W2vkzvdVPnchmvx2I'),
  Club('Basketball club', 'https://www.instagram.com/nits_basketball/',
      'https://i.imgur.com/cBeMb5r.png'),
  Club('Symphonits', 'https://www.instagram.com/sympho.nits__/',
      'https://scontent.fmaa8-1.fna.fbcdn.net/v/t39.30808-6/317755587_554505936519641_7551586414540900034_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=tvw9GUJ7k-wQ7kNvgESibKI&_nc_ht=scontent.fmaa8-1.fna&oh=00_AYCLAgIHEsSviigaYL1h8buZ15aUWF4qeyUCNGmyD8nXsA&oe=665B555B'),
  Club('Handball', 'https://www.instagram.com/nits_handball/',
      'https://i.imgur.com/W4JPypU.png'),
  Club(
    'Volleyball',
    'https://www.instagram.com/nits_volleyball/',
    'https://i.imgur.com/UAsE2IF.png',
  ),
  Club(
    'Badminton',
    'https://www.instagram.com/badminton_club_nit_silchar/',
    'https://i.imgur.com/uwVOprn.png',
  ),
  Club('Advay', 'https://linktr.ee/advaynits',
      'https://i.imgur.com/FU6tq4S.png'),
  Club(
    'Aaaveg',
    'https://linktr.ee/danceclubnits',
    'https://i.imgur.com/U7r99h7.png',
  ),
];
