class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  // TODO: Add more projects here
  Project(
    '1st sem B.Tech',
    '''Computer Science & Engineering\nElectronics & Communication Engineering\nElectrical Engineering''',
    'assets/images/1semcse.png',
    'https://drive.google.com/drive/folders/13G6OLqUbEll52fvOdCy8Fc38M_0mgrRJ',
  ),
  Project(
    '1st sem B.Tech',

    'Mechanical Engineering\nCivil Engineering\nElectronics and Instrumentation Engineering',

    'assets/images/2semcse.png',
    'https://drive.google.com/drive/folders/156_6cI-teYzOPOXM5dea12ZW1cFbmXZM',
    // 'https://drive.google.com/drive/folders/13G6OLqUbEll52fvOdCy8Fc38M_0mgrRJ',
  ),
  Project(
    '2nd sem B.Tech',
    '''Computer Science & Engineering\nElectronics & Communication Engineering\nElectrical Engineering''',
    'assets/images/2semcse.png',
    'https://drive.google.com/drive/folders/156_6cI-teYzOPOXM5dea12ZW1cFbmXZM',
  ),
  Project(
    '2nd sem B.Tech',
    'Mechanical Engineering\nCivil Engineering\nElectronics and Instrumentation Engineering',
    'assets/images/1semcse.png',
    'https://drive.google.com/drive/folders/13G6OLqUbEll52fvOdCy8Fc38M_0mgrRJ',
    // 'https://drive.google.com/drive/folders/156_6cI-teYzOPOXM5dea12ZW1cFbmXZM',
  ),
];
