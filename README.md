# spark-rsr-contract

`0xbDb674b5E24b84D78576fE6263739bc2F90A186E` (on calibration)

[Abi](out/src/SparkRsr.sol/SparkRsr.json)

## Getters

### `.commitments(uint) -> string`

## Methods

### `.addCommitment(string)`

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

```console
forge create --rpc-url https://api.calibration.node.glif.io/rpc/v0 --mnemonic secrets/mnemonic src/SparkRsr.sol:SparkRsr
```
