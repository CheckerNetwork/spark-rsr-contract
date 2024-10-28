# spark-rsr-contract

`0xbDb674b5E24b84D78576fE6263739bc2F90A186E` (on calibration)

[Abi](out/src/SparkRsr.sol/SparkRsr.json)

[Interface spec](https://www.notion.so/protocollabs/Design-Spark-SLI-on-chain-interface-121837df73d4801aaaa4f13ff7839cd0?d=126837df73d4803a95c1001caac0aa71#b70f9a9b99dd43739b136393d08c2091)

## Getters

### `.providerRetrievalResultStats(uint offset) -> string`

## Methods

### `new SparkRsr(address writer)`
### `.addProviderRetrievalResultStats(address string)`

May only be called by `writer`.

## Development

This repo requires Rust, Cargo and Foundry:
- https://doc.rust-lang.org/book/ch01-01-installation.html
- https://book.getfoundry.sh/getting-started/installation

### Clone Repo and Install

```console
git clone https://github.com/filecoin-station/spark-impact-evaluator.git
cd spark-impact-evaluator
git submodule update --init --recursive
forge test
```

## Tests

```console
forge test
```

## Deployment

Calibration:

```console
forge create --rpc-url https://api.calibration.node.glif.io/rpc/v0 --mnemonic secrets/mnemonic src/SparkRsr.sol:SparkRsr
```

Mainnet:

```console
forge create --rpc-url https://api.node.glif.io/rpc/v0 src/SparkRsr.sol:SparkRsr --constructor-args "0x..."
```