# spark-rsr-contract

- Mainnet: `0x620bfc5AdE7eeEE90034B05DC9Bb5b540336ff90`
- Calibration: `0x006fD9D10FCd2CFc830670e1c665ac23b478C252`

[Abi](out/SparkRsr.sol/SparkRsr.json)

[Interface spec](https://www.notion.so/protocollabs/Design-Spark-SLI-on-chain-interface-121837df73d4801aaaa4f13ff7839cd0?d=126837df73d4803a95c1001caac0aa71#b70f9a9b99dd43739b136393d08c2091)

## Usage

Get all provider retrieval result stats CIDs:

```
index = 0
loop:
  try:
    cid = contract.providerRetrievalResultStats(index++)
  catch:
    if (revert):
      break
```

Each CID refers to a DAG-JSON object hosted on Storacha:

```
https://$CID.ipfs.w3s.link?format=car
```

You can explore data from your browser using IPLD:

```
https://explore.ipld.io/#/explore/$CID
```

Example: https://explore.ipld.io/#/explore/baguqeera27yois66ac3fq3elk6ksdswk2em7lw3252l4osiogn7m5tyxusca

Each provider retrieval result stats object is of this shape:

```js
{
  "date": "<YYYY-MM-DD>",
  "meta": {
    "rounds": [
      {
        "index": "<roundIndex>",
        "contractAddress": "<contractAddress>",
        "details": { "/": "<cid>" }
        "measurementBatches": [{ "/": "<cid>" }, ...],
        "sparkEvaluateVersion": {
          "gitCommit": "<hash>",
        },
      },
      ...
    ]
  },
  "providerRetrievalResultStats": [
    {
      "providerId": "<providerId>",
      "successful": <n>,
      "total": <n>
    },
    ...
  ]
}
```

See full documentation at https://github.com/filecoin-project/service-classes/blob/main/service-level-indicators/spark-retrieval-success-rate.md#provider-retrieval-result-stats

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
forge create --rpc-url https://api.calibration.node.glif.io/rpc/v0 --mnemonic secrets/mnemonic src/SparkRsr.sol:SparkRsr --constructor-args "0x..."
```

Mainnet:

```console
forge create --rpc-url https://api.node.glif.io/rpc/v0 src/SparkRsr.sol:SparkRsr --ledger --constructor-args "0x..."
```
