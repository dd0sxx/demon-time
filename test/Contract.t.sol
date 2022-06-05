// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/DemonTime.sol";

contract ContractTest is Test {
        DemonTime DT = new DemonTime();
    function setUp() public {
    }

    function testInitSupply() public {
        address L = DT.ownerOf(499);
        assertEq(L, 0x8b5B9497e096ee6FfD6041D1Db37a2ac2b41AB0d);
    }
}
