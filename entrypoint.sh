#!/bin/bash

if [ ! -d /build/vet/geth/chaindata ]
then
  wallet=$(geth account new --password /build/.pwd --datadir /build/vet | awk -v FS="({|})" '{print $2}')
  geth --datadir /build/vet init /build/genesis.json
  geth --bootnodes enode://bbfa82ac7012a8ba5fa99b0c127446e8876ce9e1d15c641c462356eacc1921da049033809c07e2eb6518bf6d57070a303afc843fcc3ee22516bdbb38270081a3@52.76.54.184:30303 --datadir /build/vet --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --unlock "${wallet}" --password /build/.pwd --mine
else
  wallet=$(geth account list --datadir /build/vet| head -n 1 | awk -v FS="({|})" '{print $2}')
  geth --bootnodes enode://bbfa82ac7012a8ba5fa99b0c127446e8876ce9e1d15c641c462356eacc1921da049033809c07e2eb6518bf6d57070a303afc843fcc3ee22516bdbb38270081a3@52.76.54.184:30303 --datadir /build/vet --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --unlock "${wallet}" --password /build/.pwd --mine
fi
