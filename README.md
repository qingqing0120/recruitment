#Careers/Syracuse Job Recruitment

This Careers/Syracuse Job Recruitment is written in PHP with Laravel 4 MVC and Bootstrap, where job seekers can create full profile and view current open jobs, apply for it, and view their application status for each job.

Administrator/recreutor can add/edit jobs, view applicants for each job, filter and search for key words, view applicant system generated profile or download uploaded resume. Change their application status in one click.

System email notify applicants for new job post in a specific job category where they already subscribed to, and for their application status change.

###The system includes
  - Login and registration
  - Job seeker dashboard of
    - Personal information
    - Education
    - Experience
    - Achievments
    - Courses
    - certifications
    - skills
    - languages
  - Administrator/recreutor panel
    - post new job
    - filter and search applicant for job
    - change applicant status

####Requirements
Apache, Nginx, or Microsoft IIS
PHP 5.4 or higher
MySQL 5.6 or higher, for im using Full-text index in search module.

####Installation

For windows user:
1. Download and install wampsever.
2. Download and install composer.
3. Run the Wampsever, get into phpMyAdmin to create your own  database, set your database name and password, copy the content of the file data.sql into your own database SQL then click Go.
4. In file  `app\config\local\database.php` , change the 26 and 27 line’s username and password into your own username and password.
5. In file `app\config\database.php`, change the 59 and 60 line’s username and password into your own username and password.
6. In file `start.php`, change the 29 line ‘MSI’ into your own hostname(machine name).
7. Run  `php -S localhost:8000 -t public`  under  recruitment folder in your command.
8. Open browser, go to localhost:8000 to open our website.

For Mac user:
1. Install composer  `brew install composer`
2. Install mysql  `brew install mysql` 
3. Install phpmyadmin and import `\data.sql` file
4. Downgrade php 7 to php 5
5. Download recruitment.zip and unzip it
6. In file `app\config\local\database.php` , change the 26 and 27 line’s username and password into your own username and password.
7. In file `app\config\database.php`, change the 59 and 60 line’s username and password into your own username and password.
8. In file `start.php`, change the 29 line ‘MSI’ into your own hostname(machine name).
9. In terminal, use cd command go to recruitment folder then type  `php -S localhost:8000 -t public`  to run the server
10. Open browser, go to localhost:8000 to open our website.


After database creating and seeding there will be two default users:

Admin user: `admin@syr.edu` with password: `demo`.

Job seeker account login: `yxie37@syr.edu` with password: `demo`. Or register your own account to login.
