class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'coming soon',
    organization: 'B.Tech',
    date: 'AUG 2023',
    skills: '1st quote',
    credential:
        'https://cdn.dribbble.com/users/2769842/screenshots/15727383/media/981ee3a0f3eac319f0881ea988540678.png',
  ),
  CertificateModel(
    name: 'coming soon',
    organization: 'B.Tech',
    date: 'JUL 2023',
    skills: '1st quote',
    credential:
        'https://cdn.dribbble.com/users/2769842/screenshots/15727383/media/981ee3a0f3eac319f0881ea988540678.png',
  ),
];
