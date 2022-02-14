sudo awk -v d1="$(date --date="-5 min" "+%b %_d %H:%M")" -v d2="$(date "+%b %_d %H:%M")" '$0 > d1 && $0 < d2 || $0 ~ d2' /var/log/messages | grep dhclient* > ./"$(date +"%Y_%b_%d-%I_%M_%S_%p").log"
