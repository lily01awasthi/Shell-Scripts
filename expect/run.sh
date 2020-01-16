#!/bin/sh
PORT=30311
NETWORKID=1472583695
DATADIR="/home/lily/poa/node1"
GENESIS="/home/lily/poa/genesis.json"
cd
geth init --datadir $GENESIS --port $PORT  --networkid $NETWORKID 
geth --datadir $DATADIR --port $PORT  --networkid $NETWORKID console   
