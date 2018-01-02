#!/bin/bash

if [ ! -d /build/vet/geth/chaindata ]
then
  wallet=$(geth account new --password /build/.pwd --datadir /build/vet | awk -v FS="({|})" '{print $2}')
  geth --datadir /build/vet init /build/genesis.json
  geth --bootnodes enode://14a5a32a1811374b41d7bb90e0b27cfc1398743cccdd2240af7014e094f4eb57f8f71cbf917cd91f45d93c04b3b6abc12e5be27b9a496c1b6ad828d19ca53c4c@52.76.54.184:30303 --datadir /build/vet --networkid 40686 --rpc --rpccorsdomain "*" --rpcaddr 0.0.0.0 --rpcport 8545 --unlock "${wallet}" --password /build/.pwd --mine
else
  wallet=$(geth account list --datadir /build/vet| head -n 1 | awk -v FS="({|})" '{print $2}')
  geth --bootnodes enode://14a5a32a1811374b41d7bb90e0b27cfc1398743cccdd2240af7014e094f4eb57f8f71cbf917cd91f45d93c04b3b6abc12e5be27b9a496c1b6ad828d19ca53c4c@52.76.54.184:30303 --datadir /build/vet --networkid 40686 --rpc --rpccorsdomain "*" --rpcaddr 0.0.0.0 --rpcport 8545 --unlock "${wallet}" --password /build/.pwd --mine
fi
