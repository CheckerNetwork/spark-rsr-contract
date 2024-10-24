// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/SparkRsr.sol";

contract SparkRsrTest is Test {
    function test_AddCommitment() public {
        SparkRsr sparkRsr = new SparkRsr(address(this));
        sparkRsr.addAcceptedRetrievalTaskMeasurementsCommitment("cid");
        assertEq(sparkRsr.acceptedRetrievalTaskMeasurementsCommitments(0), "cid");
        vm.expectRevert();
        sparkRsr.acceptedRetrievalTaskMeasurementsCommitments(1);
    }

    function test_AddCommitmentAuth() public {
        SparkRsr sparkRsr = new SparkRsr(vm.addr(1));
        vm.expectRevert();
        sparkRsr.addAcceptedRetrievalTaskMeasurementsCommitment("cid");
    }
}
