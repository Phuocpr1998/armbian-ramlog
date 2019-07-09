mkdir -p /usr/local/bin/
install -m 644 armbian-ramlog.service /etc/systemd/system/armbian-ramlog.service
install -m 755 armbian-ramlog /usr/local/bin/armbian-ramlog
install -m 755 armbian-truncate-logs /usr/local/bin/armbian-truncate-logs
install -m 644 armbian-ramlog.conf /etc/default/armbian-ramlog
systemctl enable armbian-ramlog

# cron
install -m 644 armbian-truncate-logs.cron /etc/cron.d/armbian-truncate-logs

rm -rf /var/log.hdd
rm -rf /var/hdd.log