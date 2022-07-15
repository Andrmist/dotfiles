#! /usr/bin/env bash
umask 077

ipv4="$1$3"
serv4="${1}1"
target="$2"
name="$4"

wg genkey | tee "${name}.key" | wg pubkey > "${name}.pub"

echo "# $name" >> /etc/wireguard/wg0.conf
echo "[Peer]" >> /etc/wireguard/wg0.conf
echo "PublicKey = $(cat "${name}.pub")" >> /etc/wireguard/wg0.conf
echo "AllowedIPs = $ipv4/32" >> /etc/wireguard/wg0.conf
echo "" >> /etc/wireguard/wg0.conf

echo "[Interface]" > "${name}.conf"
echo "Address = $ipv4/32" >> "${name}.conf"
echo "DNS = ${serv4}" >> "${name}.conf" #Specifying DNS Server
echo "PrivateKey = $(cat "${name}.key")" >> "${name}.conf"
echo "" >> "${name}.conf"
echo "[Peer]" >> "${name}.conf"
echo "PublicKey = $(cat server.pub)" >> "${name}.conf"
echo "Endpoint = $target" >> "${name}.conf"
#echo "AllowedIPs = ${serv4}/24" >> "${name}.conf" # clients isolated from one another
echo "AllowedIPs = ${1}0/24, 192.168.1.0/24" >> "${name}.conf" # clients can see each other
echo "PersistentKeepalive = 25" >> "${name}.conf"

# Print QR code scanable by the Wireguard mobile app on screen
echo "Scan this QR code for client config"
qrencode -t ansiutf8 < "${name}.conf"
echo "or copy it from ${name}.conf"

systemctl restart wg-quick@wg0