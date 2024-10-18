// SPDX-License-Identifier: (MIT or Apache-2.0)

pragma solidity ^0.8.19;

contract SparkRsr {
    string[] public commitments;

    function addCommitment (string memory cid) public {
        commitments.push(cid);
    }
}
