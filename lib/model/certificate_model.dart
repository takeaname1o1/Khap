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
    name: 'Getting started with Flutter Development',
    organization: 'B.Tech',
    date: 'AUG 2023',
    skills: '1st Semester',
    credential:  'https://www.coursera.org/account/accomplishments/certificate/HQ4LFHSF4LKZ',
  ),

  CertificateModel(
    name: 'Network Defense Essentials (NDE)',
    organization: 'B.Tech',
    date: 'JUL 2023',
    skills: '1st Semester',
    credential:  'https://codered.eccouncil.org/certificate/43a2d2a7-40ed-4230-9e65-a9aa0935e651?logged=false',
  ),









];
