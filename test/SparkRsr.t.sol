// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/SparkRsr.sol";

contract SparkRsrTest is Test {
    function test_AddProviderRetrievalResultStatsCommitment() public {
        SparkRsr sparkRsr = new SparkRsr(address(this));
        sparkRsr.addProviderRetrievalResultStatsCommitment("cid");
        assertEq(sparkRsr.providerRetrievalResultStatsCommitments(0), "cid");
        vm.expectRevert();
        sparkRsr.providerRetrievalResultStatsCommitments(1);
    }

    function test_AddProviderRetrievalResultStatsCommitmentAuth() public {
        SparkRsr sparkRsr = new SparkRsr(vm.addr(1));
        vm.expectRevert();
        sparkRsr.addProviderRetrievalResultStatsCommitment("cid");
    }
}
