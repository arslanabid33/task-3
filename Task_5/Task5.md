Apache Deployment and Log Monitoring – Summary

As part of this task, I configured and deployed a custom website using the Apache HTTP server. The goal was to set up a separate virtual host for a custom web project, ensure it was accessible locally, and implement a simple monitoring system for real-time visibility into web traffic via Apache logs.

 Website Hosting with Apache

I began by creating a dedicated directory (/var/www/devops_site) to host the website files. A basic index.html page was added to serve as the homepage. To make the site accessible via a custom domain (devops_site.local), I created a new Apache virtual host configuration file within /etc/apache2/sites-available/.

This virtual host was configured to serve content from the custom directory and to log access and error events using Apache’s default logging mechanism. The site was enabled using a2ensite, and I reloaded the Apache service to apply the configuration. I also updated the system's /etc/hosts file to map the custom domain to localhost, allowing access via a web browser or curl.

 Apache Log Monitoring

With the website up and running, I explored Apache's logging system. I identified the primary log files: access.log (records all incoming HTTP requests) and error.log (captures server-side issues). These logs are located in /var/log/apache2/.

To monitor traffic and activity on the site, I used standard Linux command-line tools such as tail, grep, awk, and wc. These helped analyze request patterns, count hits, and filter specific HTTP status codes like 404 or 500 errors.

 Real-Time Log Monitoring Script

To automate this process, I created a bash script (monitor_hits.sh) that watches the access log in real time. The script reads each new log entry as it arrives, increments a hit counter, and prints useful request details such as the IP address, requested URL, and response status. This provided a lightweight, live overview of how the site was being accessed.

This task helped reinforce key concepts around Apache configuration, Linux filesystem structure, virtual hosting, and basic log analysis — all essential components in web server administration and DevOps practice
