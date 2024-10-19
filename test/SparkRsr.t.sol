// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/SparkRsr.sol";

contract SparkRsrTest is Test {
    function test_AddCommitment() public {
        SparkRsr sparkRsr = new SparkRsr(address(this));
        sparkRsr.addCommitment("cid");
        assertEq(sparkRsr.commitments(0), "cid");
        vm.expectRevert();
        sparkRsr.commitments(1);
    }

    function test_AddCommitmentAuth() public {
        SparkRsr sparkRsr = new SparkRsr(vm.addr(1));
        vm.expectRevert();
        sparkRsr.addCommitment("cid");
    }
}
