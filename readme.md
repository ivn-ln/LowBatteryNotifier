# Small bash script for low battery notifications

## Installation
- Open terminal and navigate to the directory with notify-battery.sh and execute
```
cp ./notify-battery.sh ~ -f
```
- Open current crontab in editor with ```crontab -e``` and put ```*/5 * * * * sh ~/notify-battery.sh``` at the end of the file
