ufw default deny incoming
ufw default deny outgoing

#allow ntp
ufw allow in 123/udp
ufw allow out 123/udp

#allow dns
ufw allow in 53/udp
ufw allow out 53/udp
ufw allow in 53/tcp
ufw allow out 53/tcp

#allow dhcp
ufw allow in 67,68/udp
ufw allow out 67,68/udp

#allow http
ufw allow in 80/tcp
ufw allow out 80/tcp

#allow https
ufw allow in 443/tcp
ufw allow out 443/tcp
