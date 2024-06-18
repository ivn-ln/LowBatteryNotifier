# Small bash script for low battery notifications

## Installation
- Execute following commands
```
git clone https://github.com/ivn-ln/LowBatteryNotifier.git
cd LowBatteryNotifier
cp ./notify-battery.sh ~ -f
```
- Open current crontab in editor with ```crontab -e``` and put ```*/5 * * * * sh ~/notify-battery.sh``` at the end of the file
