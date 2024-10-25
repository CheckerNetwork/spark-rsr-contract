// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/SparkRsr.sol";

contract SparkRsrTest is Test {
    function test_AddProviderRetrievalResultStats() public {
        SparkRsr sparkRsr = new SparkRsr(address(this));
        sparkRsr.addProviderRetrievalResultStats("cid");
        assertEq(sparkRsr.providerRetrievalResultStats(0), "cid");
        vm.expectRevert();
        sparkRsr.providerRetrievalResultStats(1);
    }

    function test_AddProviderRetrievalResultStatsAuth() public {
        SparkRsr sparkRsr = new SparkRsr(vm.addr(1));
        vm.expectRevert();
        sparkRsr.addProviderRetrievalResultStats("cid");
    }
}
