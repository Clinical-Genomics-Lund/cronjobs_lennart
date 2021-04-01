## Cronjobs Run By worker@lennart

List all cronjobs that are run by worker@lennart.
* How is it run?
* How often is it run?
* Why is it run?
* What dependancies?

### Active Cron-jobs

#### loqusdb for wgs
* Bash scripts that collects a dump of loqusdb for WGS samples through ssh, bgzips, indexes and scps that latest version to hopper
* Once per week, sunday at 1:00 AM
* Keep an up-to-date loqusdb for annotation of WGS vcf
* bgzip, tabix and ssh-keys for cmdscout2 and hopper
