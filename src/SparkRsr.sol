// SPDX-License-Identifier: (MIT or Apache-2.0)

pragma solidity ^0.8.19;

contract SparkRsr {
    string[] public acceptedRetrievalTaskMeasurementsCommitments;
    address writer;

    constructor(address _writer) {
        writer = _writer;
    }

    function addAcceptedRetrievalTaskMeasurementsCommitment(string memory cid) public {
        require(msg.sender == writer, "only the writer can add commitments");
        acceptedRetrievalTaskMeasurementsCommitments.push(cid);
    }
}
