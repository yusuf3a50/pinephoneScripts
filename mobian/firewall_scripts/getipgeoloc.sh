#gets geo location
curl -s https://ipinfo.io/$(curl -s  https://ipinfo.io/ip) | jq '.ip, .country, .region, .loc, .org, .hostname '
