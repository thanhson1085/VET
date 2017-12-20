#!/bin/bash

if [ ! -d /build/vet/geth/chaindata ]
then
  wallet=$(geth account new --password /build/.pwd --datadir /build/vet | awk -v FS="({|})" '{print $2}')
  sed -i "s/:wallet:/${wallet}/g" /build/genesis.json
  geth --datadir /build/vet init /build/genesis.json
  geth --bootnodes enode://2a7201b10cc13af06d712aaa0b5b8dfbb7938447711fd467da93c75fdc96ed1e11c916829049eaa50c35dbf8675eefdc22f240bd54ec9d457cd6194159fbaccd@52.76.54.184:30303 --datadir /build/vet --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --unlock "${wallet}" --password /build/.pwd --mine
else
  wallet=$(geth account list --datadir /build/vet| head -n 1 | awk -v FS="({|})" '{print $2}')
  geth --bootnodes enode://2a7201b10cc13af06d712aaa0b5b8dfbb7938447711fd467da93c75fdc96ed1e11c916829049eaa50c35dbf8675eefdc22f240bd54ec9d457cd6194159fbaccd@52.76.54.184:30303 --datadir /build/vet --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --unlock "${wallet}" --password /build/.pwd --mine
fi
