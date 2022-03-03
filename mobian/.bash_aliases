#place this file in /home/mobian/

#update the system:
alias up='sudo apt update; sudo apt upgrade -y';

#firewall related commands and scripts
alias ipt='sudo iptables -L -v';
alias ipt1='bash /home/mobian/firewall_scripts/blockWwan0.ipt';

alias fw='sudo ufw status verbose';
alias fw0='sudo bash /home/mobian/firewall_scripts/defaultDeny.ufw';
alias fw1='sudo bash /home/mobian/firewall_scripts/blockWwan0.ufw';
alias fw2='sudo bash /home/mobian/firewall_scripts/functionalFW.ufw';
alias fwo='bash /home/mobian/firewall_scripts/openvpn.ufw'
alias fww='bash /home/mobian/firewall_scripts/wireguard.ufw'

#network troubleshooting scripts
alias ifc='sudo ifconfig -a';
alias pp='ping 1.1.1.1';
alias lsofpin='watch "sudo lsof -P -i -n"';
#if modem crashes, reset the baseband processor chip
alias 0='echo AT+CRESET | socat -,escape=0x0f /dev/ttyUSB1,rawer,crnl,echo=0';

#tor-related scripts
alias restor='sudo systemctl restart tor; sudo tail -f /var/log/tor/notices.log';
alias myip='bash /home/mobian/firewall_scripts/getipgeoloc.sh';

#add some more aliases if youd like:
#alias='';
#alias='';
