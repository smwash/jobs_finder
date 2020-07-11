class PopularJobs {
  final String jobName;
  final String coName;
  final String jobType;
  final String daysLeft;
  final String coLogo;
  final String salary;

  PopularJobs(
      {this.jobName,
      this.coName,
      this.jobType,
      this.daysLeft,
      this.coLogo,
      this.salary});
}

List<PopularJobs> popularJobs = [
  PopularJobs(
    daysLeft: '4 Days Left',
    jobType: 'Full Time',
    coName: 'Channel Inc',
    coLogo: 'images/pinterest.png',
    salary: '\$40-90k/year',
    jobName: 'Senior UX Designer',
  ),
  PopularJobs(
    daysLeft: '10 Days Left',
    jobType: 'Part Time',
    coName: 'Safaricom Plc',
    coLogo: 'images/pinterest.png',
    salary: '\$30-80k/year',
    jobName: 'Full-Stack Devloper',
  ),
  PopularJobs(
    daysLeft: '8 Days Left',
    jobType: 'Full Time',
    coName: 'Bidco Co.',
    coLogo: 'images/pinterest.png',
    salary: '\$80-100k/year',
    jobName: 'Electrician',
  ),
  PopularJobs(
    daysLeft: '14 Days Left',
    jobType: 'Part Time',
    coName: 'Jumia',
    coLogo: 'images/pinterest.png',
    salary: '\$40-90k/year',
    jobName: 'Logistics Manager',
  ),
];
