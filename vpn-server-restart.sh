docker rm -f strongswan

docker run -d --name=strongswan \
  --restart=always \
  --privileged=true \
  --net=host \
  --cap-add=ALL \
  -e VPN_SUBNET=192.168.1.0/24 \
  -v $PWD/strongswan/ipsec.conf:/etc/ipsec.conf \
  -v $PWD/strongswan/ipsec.d:/etc/ipsec.d \
  -v $PWD/strongswan/ipsec.secrets:/etc/ipsec.secrets \
  -v $PWD/strongswan/strongswan.conf:/etc/strongswan.conf \
  -v $PWD/strongswan/strongswan.d:/etc/strongswan.d \
  -v $PWD/strongswan/strongswan/log/charon.log:/var/log/charon.log \
  -v /lib/modules:/lib/modules:ro \
  -v /etc/localtime:/etc/localtime:ro \
  -v /etc/timezone:/etc/timezone:ro \
  houselabs/strongswan

