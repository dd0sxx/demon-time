// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/DemonTime.sol";

contract ContractTest is Test {
    function setUp() public {
        DemonTime DT = new DemonTime();
    }

    function testExample() public {
        assertTrue(true);
    }
}
