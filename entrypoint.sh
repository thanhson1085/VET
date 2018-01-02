#!/bin/bash

if [ ! -d /build/vet/geth/chaindata ]
then
  wallet=$(geth account new --password /build/.pwd --datadir /build/vet | awk -v FS="({|})" '{print $2}')
  geth --datadir /build/vet init /build/genesis.json
  geth --bootnodes ${BOOT_NODES} --datadir /build/vet --networkid 40686 --rpc --rpccorsdomain "*" --rpcaddr 0.0.0.0 --rpcport 8545 --unlock "${wallet}" --password /build/.pwd --mine
else
  wallet=$(geth account list --datadir /build/vet| head -n 1 | awk -v FS="({|})" '{print $2}')
  geth --bootnodes ${BOOT_NODES} --datadir /build/vet --networkid 40686 --rpc --rpccorsdomain "*" --rpcaddr 0.0.0.0 --rpcport 8545 --unlock "${wallet}" --password /build/.pwd --mine
fi
