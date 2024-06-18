# Small bash script for low battery notifications

## Installation
- Open terminal and navigate to directory with the notify-battery.sh and execute ```cp ./notify-battery.sh ~```
- Open current crontab in editor with ```crontab -e``` and put ```*/5 * * * * sh ~/notify-battery.sh``` at the end of the file
