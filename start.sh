#!/bin/sh

tor &
/xray -config /xray.json &
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile &
wget -O xui.sh https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh &&
bash xui.sh
