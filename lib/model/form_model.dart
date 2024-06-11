class FormModel {
  final String name;
  final String cName;
  //final String year;
  final String quote;
  final String dlink;

  FormModel({
    required this.name,
    required this.cName,
    // required this.year,
    required this.quote,
    required this.dlink,
  });
}

List<FormModel> formList = [
  FormModel(
    name: 'Computer Science Society',
    cName: 'CSS',
    quote: '',
    dlink: 'https://in.linkedin.com/company/cssnits',
  ),
  FormModel(
    name: 'Electronics and Communication Society',
    cName: 'ECS',
    quote: '',
    dlink: 'https://in.linkedin.com/company/electronics-and-communication-society-nit-silchar',
  ),
  FormModel(
    name: 'Mechanical Engineering Society',
    cName: 'MES',
    quote: '',
    dlink: 'https://in.linkedin.com/company/mes-nit-silchar',
  ),
  FormModel(
    name: 'Electrical Engineering Society',
    cName: 'EES',
    quote: '',
    dlink: 'https://in.linkedin.com/company/electrical-engineering-society-nit-silchar',
  ),
  FormModel(
    name: 'Civil Engineering Society',
    cName: 'CES',
    quote: '',
    dlink: 'https://in.linkedin.com/company/ces-nitsilchar',
  ),
  FormModel(
    name: 'IEEE Student Branch',
    cName: 'IEEE',
    quote: '',
    dlink: 'https://r10.ieee.org/silchar/',
  ),
  FormModel(
    name: 'Indian National Society of Environmental Economics',
    cName: 'INSEE',
    quote: '',
    dlink: 'https://in.linkedin.com/company/insees-nits',
  ),
  FormModel(
    name: 'Department of Management Studies',
    cName: 'DOMS',
    quote: '',
    dlink: 'https://in.linkedin.com/company/doms-nit-silchar?trk=public_post_feed-actor-name',
  ),
];
