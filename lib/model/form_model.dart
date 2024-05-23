class FormModel {
  final String name;
  final String course;
  final String year;
  final String semester;
  final String dlink;

  FormModel({
    required this.name,
    required this.course,
    required this.year,
    required this.semester,
    required this.dlink,
  });
}

List<FormModel> formList = [
  FormModel(
    name: 'registeration form',
    course: 'B.Tech',
    year: '2023',
    semester: '1st Semester',
    dlink:
        'https://cdn.dribbble.com/users/2769842/screenshots/15727383/media/981ee3a0f3eac319f0881ea988540678.png',
  ),
  FormModel(
    name: 'unofficial whatsapp link ',
    course: 'B.Tech',
    year: 'JUL 2023',
    semester: '1st Semester',
    dlink:
        'https://cdn.dribbble.com/users/2769842/screenshots/15727383/media/981ee3a0f3eac319f0881ea988540678.png',
  ),
  FormModel(
    name: 'unofficial telegram link ',
    course: 'B.Tech',
    year: 'JUL 2023',
    semester: '1st Semester',
    dlink:
        'https://cdn.dribbble.com/users/2769842/screenshots/15727383/media/981ee3a0f3eac319f0881ea988540678.png',
  ),
];
