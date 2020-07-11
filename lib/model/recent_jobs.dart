class RecentJobs {
  final String jobName;
  final String coName;
  final String jobType;
  final String daysLeft;
  final String coLogo;

  RecentJobs(
      {this.jobName, this.coName, this.jobType, this.daysLeft, this.coLogo});
}

List<RecentJobs> recentJobs = [
  RecentJobs(
      coLogo: 'images/googlePlus.png',
      jobName: 'Senior Product Designer',
      coName: 'Pinterest',
      jobType: 'Full Time',
      daysLeft: '15d Left'),
  RecentJobs(
      coLogo: 'images/linkedin.png',
      jobName: 'Lead Architect',
      coName: 'LinkedIn',
      jobType: 'Full Time',
      daysLeft: '17d Left'),
  RecentJobs(
      coLogo: 'images/pinterest.png',
      jobName: 'Logistics Manager',
      coName: 'Pinterest',
      jobType: 'Full Time',
      daysLeft: '2d Left'),
  RecentJobs(
      coLogo: 'images/twitter.png',
      jobName: 'Product Designer',
      coName: 'Twitter',
      jobType: 'Part Time',
      daysLeft: '15d Left'),
  RecentJobs(
      coLogo: 'images/googlePlus.png',
      jobName: 'Senior Product Designer',
      coName: 'Cascade',
      jobType: 'Full Time',
      daysLeft: '2d Left'),
];
