docker run -i -v $PWD/strongswan:/data \
  -e VPN_DOMAIN=149.210.237.14 \
  -e VPN_DNS=1.1.1.1 \
  -e VPN_SUBNET=192.168.1.0/24 \
  -e VPN_PSK=paskey \
  -e VPN_USERNAME=harianto \
  -e VPN_PASSWORD=harianto \
  -e VPN_P12_PASSWORD=lock \
  houselabs/strongswan-buildconf
