#!/bin/sh
PORT=30311
NETWORKID=1472583695
DATADIR="/home/lily/poa/node1"
GENESIS="/home/lily/poa/genesis.json"
cd
nohup geth init --datadir $GENESIS --port $PORT  --networkid $NETWORKID 
nohup geth --datadir $DATADIR --port $PORT  --networkid $NETWORKID console   
