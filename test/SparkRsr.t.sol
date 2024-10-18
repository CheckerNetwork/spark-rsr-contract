// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/SparkRsr.sol";

contract SparkRsrTest is Test {
    function test_Commitments() public {
        SparkRsr sparkRsr = new SparkRsr();
        sparkRsr.addCommitment("cid");
        assertEq(sparkRsr.commitments(0), "cid");
        vm.expectRevert();
        sparkRsr.commitments(1);
    }
}
