// SPDX-License-Identifier: (MIT or Apache-2.0)

pragma solidity ^0.8.19;

contract SparkRsr {
    string[] public providerRetrievalResultStats;
    address writer;

    constructor(address _writer) {
        writer = _writer;
    }

    function addProviderRetrievalResultStats(string memory cid) public {
        require(msg.sender == writer, "only the writer can add stats");
        providerRetrievalResultStats.push(cid);
    }
}
